#!/usr/bin/python3
"""
Module for number_of_subscribers function
"""
import requests


def number_of_subscribers(subreddit):
    """
    A function that queries the Reddit API
    and returns the number of subscribers for a given subreddit.
    """
    res = requests.get("https://www.reddit.com/r/{}/about.json"
                       .format(subreddit),
                       headers={'User-Agent': 'Custom'},
                       allow_redirects=False)

    if res is None:
        return 0

    return res.json().get('data', {}).get('subscribers', 0)
