def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  shortened_tweet_array = []
  long_word_array = dictionary.keys

  tweet_array.each do |word|
    if long_word_array.include?(word)
      shortened_tweet_array << dictionary[word]
    else
      shortened_tweet_array << word
    end
  end
  shortened_tweet_array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[137..139] = "."
    tweet[0..139]
  else
    tweet
  end
end
