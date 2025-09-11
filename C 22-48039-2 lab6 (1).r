needed <- c("tidyverse", "readr", "stringr", "janitor",
            "tidytext", "SnowballC", "wordcloud", "topicmodels")
to_install <- setdiff(needed, rownames(installed.packages()))
if (length(to_install)) install.packages(to_install, dependencies = TRUE)

library(tidyverse)

library(readr)
library(stringr)
library(janitor)


library(tidytext)
library(SnowballC)
library(wordcloud)

csv_path <- "C:/BBC_TOP_NEWS.CSV"

TEXT_COL <- "content"

raw <- read_csv(csv_path, locale = locale(encoding = "UTF-8"), show_col_types = FALSE)

# If the specified TEXT_COL is not present, try to guess a plausible text column
if (!TEXT_COL %in% names(raw)) {
  candidates <- names(raw)[map_lgl(raw, ~ is.character(.x) || is.factor(.x))]
  TEXT_COL <- candidates[which.max(sapply(raw[candidates],
                                          function(x) mean(nchar(as.character(x)), na.rm = TRUE)))]
  message("Guessed text column: ", TEXT_COL)
}

df <- raw %>%
  mutate(doc_id = row_number(),
         text   = as.character(.data[[TEXT_COL]])) %>%
  select(doc_id, everything())

# Normalize encoding (helps for non-Latin scripts)
df$text <- iconv(df$text, from = "", to = "UTF-8")

# Basic checks
cat("Rows:", nrow(df), "\n")

df <- df %>%
  filter(!is.na(text)) %>%
  mutate(text = str_squish(text)) %>%
  filter(text != "") %>%
  distinct(text, .keep_all = TRUE)

# Show a sample
df %>% select(doc_id, !!TEXT_COL := text) %>% head(5)



clean_text <- function(x) {
  x %>%
    str_replace_all("https?://\\S+|www\\.[^\\s]+", " ") %>%  # URLs
    str_replace_all("@\\w+|#\\w+", " ") %>%                 # mentions/hashtags
    str_replace_all("[^\\p{L}\\p{N}\\s']", " ") %>%         # keep letters, numbers, space, '
    str_to_lower() %>%
    str_squish()
}

df <- df %>% mutate(text_clean = clean_text(text))

# Show cleaned sample
df %>% select(doc_id, text, text_clean) %>% head(5)



data(stop_words)  # English stopwords from tidytext

tokens <- df %>%
  unnest_tokens(word, text_clean, token = "words") %>%
  anti_join(stop_words, by = "word") %>%
  filter(nchar(word) >= 3)   # drop very short tokens

tokens %>% head(10)



####
tokens <- tokens %>%
  mutate(stem = SnowballC::wordStem(word, language = "en"))

tokens %>% select(doc_id, word, stem) %>% head(10)



##
word_freq <- tokens %>%
  count(stem, sort = TRUE)

head(word_freq, 20)


top_n <- 20
p <- word_freq %>%
  slice_max(n, n = top_n) %>%
  ggplot(aes(x = reorder(stem, n), y = n)) +
  geom_col() +
  coord_flip() +
  labs(title = paste("Top", top_n, "words (by frequency)"),
       x = "Word (stem)", y = "Count") +
  theme_minimal()
p




par(mar = c(1,1,1,1))  # prevent "figure margins too large"
wc_df <- word_freq %>% filter(n > 0)
suppressWarnings(
  wordcloud(words = wc_df$stem, freq = wc_df$n, max.words = 200, random.order = FALSE)
)


png("wordcloud.png", width = 1200, height = 900, res = 150)
par(mar = c(1,1,1,1))
wordcloud(words = wc_df$stem, freq = wc_df$n, max.words = 200, random.order = FALSE)
dev.off()


tfidf <- tokens %>%
  count(doc_id, stem, sort = FALSE) %>%
  bind_tf_idf(term = stem, document = doc_id, n = n) %>%
  arrange(desc(tf_idf))

head(tfidf, 15)



dtm_tfidf <- tfidf %>%
  cast_dtm(document = doc_id, term = stem, value = tf_idf)

dtm_tfidf



write_csv(df,        "cleaned_text.csv")
write_csv(word_freq, "top_words.csv")
write_csv(tfidf,     "tfidf_by_doc.csv")
cat("Saved files: cleaned_text.csv, top_words.csv, tfidf_by_doc.csv, top_words_bar.png, wordcloud.png\n")

