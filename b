#!/usr/bin/env python3
import webbrowser
from sys import argv, stderr

bangs = {
    '-': 'https://duckduckgo.com/?q={}',
    'w': 'https://en.wikipedia.org/wiki/{}',
}


def main():
    if len(argv) == 1:
        print('No arguments supplied')
    elif len(argv) == 2:
        print('No query is provided')
    if argv[1] in bangs:
        webbrowser.open(bangs[argv[1]].format(argv[2]))
    else:
        print('Unknown bang.')

main()
