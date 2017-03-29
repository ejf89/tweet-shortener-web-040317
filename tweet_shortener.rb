require 'pry'

def dictionary

    dictionary = {
        :"hello" => 'hi',
        :"to" => '2',
        :"two" => '2',
        :"too" => '2',
        :"for" => '4',
        :"four" => '4',
        :"be" => 'b',
        :'you' => 'u',
        :"at" => '@',
        :'and' => "&"
    }

dictionary
end

def word_substituter(tweet)
    splitTweet = tweet.split(" ")
    checkArray = dictionary.keys.join(" ").split(" ")
    newTweet = ""

    splitTweet.collect do |word|
        if checkArray.include? word
            splitTweet[splitTweet.index(word)] = dictionary[word.to_sym]
            splitTweet
        end
        newTweet = splitTweet.join(" ")
    end
    newTweet
end

def bulk_tweet_shortener(array)
    array.each do |thing|
        puts word_substituter(thing)
    end
end
