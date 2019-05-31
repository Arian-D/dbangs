#!/usr/bin/env python3

import webbrowser
from sys import argv, exit

bangs = {
    'd': 'https://duckduckgo.com/?q={}',
    'w': 'https://en.wikipedia.org/wiki/{}',
    'imdb': 'https://www.imdb.com/find?s=all&q={}',
    'a': 'https://www.amazon.com/s?k={}',
    'e': 'https://www.ebay.com/sch/i.html?_nkw={}',
    'so': 'https://stackoverflow.com/search?q={}',
    'gh': 'https://github.com/search?q={}',
    'zillow': 'https://www.zillow.com/homes/{}',
    'tw': 'https://twitter.com/search?q={}',
    'li': 'https://www.linkedin.com/search/results/index/?keywords={}',
    'r': 'https://www.reddit.com/search?q={}',
    'ste': 'https://store.steampowered.com/search/?term={}',
    'p': 'https://www.pinterest.com/search/pins/?q={}',
    'wa': 'https://www.wolframalpha.com/input/?i={}',
    'g': 'https://www.google.com/search?q={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
}


def main():
    if len(argv) == 1:
        print('No arguments supplied')
        exit(2)
    elif len(argv) == 2:
        print('No query is provided')
        exit(2)

    if argv[1] in bangs:
        try:
            webbrowser.open(bangs[argv[1]].format(argv[2]))
        except webbrowser.Error as e:
            print(e)
            exit(1)
    else:
        print('Unknown bang.')
        exit(2)


main()
