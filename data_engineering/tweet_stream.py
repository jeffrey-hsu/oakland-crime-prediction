#Import the necessary methods from tweepy library
from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream

#Variables that contains the user credentials to access Twitter API 
access_token = "2267778415-tGUdixbdAkL7JARvC6EvOMOe0jawkDRXo6zXFkv"
access_token_secret = "BTH6PN4WdNNmBvF55eBeQ4t4V4i5wJOhWASrw8aot3XhC"
consumer_key = "R555aBqP5qy0dNGML3J8pEgzV"
consumer_secret = "uxtqGwtWZl0EcLX0RhG6ljbgneqKm9V2736rsSbGdbmcnWWpqy"


#This is a basic listener that just prints received tweets to stdout.
class StdOutListener(StreamListener):
    def on_data(self, data):
        print data
        return True

    def on_error(self, status):
        print status

if __name__ == '__main__':

    #This handles Twitter authetification and the connection to Twitter Streaming API
    l = StdOutListener()
    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    stream = Stream(auth, l)

    #This line filter Twitter Streams to capture data by the keywords: 'python', 'javascript', 'ruby'
    stream.filter(track=['python', 'javascript', 'ruby'])
