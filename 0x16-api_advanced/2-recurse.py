#!/usr/bin/python3
"""
Module for recurse function
"""
import requests


def recurse(subreddit, hot_list=[], new_after=''):
    """
    A recursive function that queries the Reddit API
    and returns a list containing the titles of all hot articles
    """

    response = requests.get("https://www.reddit.com/r/{}/hot.json"
                            .format(subreddit),
                            headers={'User-Agent': 'Custom'},
                            params={'after': new_after},
                            allow_redirects=False)

    response = response.json().get('data', None)

    if response is None:
        return None

    response = response.get('children', [])

    for post in response:
        hot_list.append(post.get('data', None).get('title', ''))

    new_after = response.get('data', {}).get('after', None)

    if new_after is None:
        return hot_list

    return recurse(subreddit, hot_list, new_after)
