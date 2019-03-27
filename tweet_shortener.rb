def dictionary
	dictionary = {
		"hello" => "hi",
		"to" => "2",
		"two" => "2", 
		"too" => "2",
		"four" =>  "4",
		"for" =>  "4",
		"be" =>  "b",
		"you" =>  "u",
		"at" =>  "@", 
		"and" =>  "&"
	}

end

def word_substituter(string)
	  string.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ") #remember about the space
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
	if tweet.size >= 140
		word_substituter(tweet)
	else
		tweet #why do we need tweet here?
	end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..135] + " ..."
  else
    tweet
  end
end
