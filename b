#!/usr/bin/env python3

import webbrowser
from sys import argv, exit, stderr

bangs = {
    'd': ('https://duckduckgo.com/', '?q={}'),
    'w': ('https://en.wikipedia.org/', 'wiki/{}'),
    'imdb': ('https://www.imdb.com/', 'find?s=all&q={}'),
    'a': ('https://www.amazon.com/', 's?k={}'),
    'e': ('https://www.ebay.com/', 'sch/i.html?_nkw={}'),
    'so': ('https://stackoverflow.com/', 'search?q={}'),
    'gh': ('https://github.com/', 'search?q={}'),
    'zillow': ('https://www.zillow.com/', 'homes/{}'),
    'tw': ('https://twitter.com/', 'search?q={}'),
    'li': ('https://www.linkedin.com/', 'search/results/index/?keywords={}'),
    'r': ('https://www.reddit.com/', 'search?q={}'),
    'ste': ('https://store.steampowered.com/', 'search/?term={}'),
    'p': ('https://www.pinterest.com/', 'search/pins/?q={}'),
    'wa': ('https://www.wolframalpha.com/', 'input/?i={}'),
    'g': ('https://www.google.com/', 'search?q={}'),
    'yt': ('https://www.youtube.com/', 'results?search_query={}'),
}


def warn(err):
    print(err, file=stderr)
    exit(2)


def main():
    if len(argv) == 1:
        warn('No arguments supplied')
    if argv[1] in bangs:
        text = bangs[argv[1]][0] + (bangs[argv[1]][1] if len(argv) >= 3 else '')
        # bangs[bang][0] refers to website url and bangs[bang][1] refers to "search?q=" text
        try:
            webbrowser.open(
                text.format(' '.join(argv[2:]))
            )
        except webbrowser.Error as e:
            exit(f'Could not open: {e}')
    else:
        warn('Unknown bang.')


main()
