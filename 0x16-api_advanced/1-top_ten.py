#!/usr/bin/python3
"""
Module for top_ten function
"""
import requests

def top_ten(subreddit):
    """
    A function that queries the Reddit API and prints the titles of the first 10 hot posts
    """
    res = requests.get("https://www.reddit.com/r/{}/hot/.json".format(subreddit), headers={'User-Agent': 'Custom'}, params={'limit': 10}, allow_redirects=False)

    response = res.json().get('data', None)

    if response is None:
        print(None)
        return

    response = response.get('children', [])

    for post in response:
        print(post.get('data', {}).get('title', ''))
