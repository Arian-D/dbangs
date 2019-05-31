#!/usr/bin/env python3
import webbrowser
from sys import argv, stderr, exit

bangs = {
    '-': 'https://duckduckgo.com/?q={}',
    'w': 'https://en.wikipedia.org/wiki/{}',
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
