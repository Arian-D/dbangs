#!/usr/bin/env python3

import webbrowser
from sys import argv, exit, stderr
from os.path import join, expanduser, isfile

CONFIG_PATH = join(expanduser('~'), '.config', 'dbangs', 'bangs')


def warn(err):
    print(err, file=stderr)
    exit(2)


def main():
    if len(argv) == 1:
        warn('No arguments supplied')

    if not isfile(CONFIG_PATH):
        warn(f'No configuration file found. Make sure {CONFIG_PATH} exists')


    for bang, url, param in (tuple(line.split()) for line in open(CONFIG_PATH, 'r')):

        if argv[1] == bang:
            text = url + (param if len(argv) >= 3 else '')
            try:
                webbrowser.open(
                    text.format(' '.join(argv[2:]))
                )
                exit(0)
            except webbrowser.Error as e:
                exit(f'Could not open: {e}')
    else:
        warn('Unknown bang.')


main()
