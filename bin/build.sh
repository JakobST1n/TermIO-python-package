#!/bin/sh

printf "> Create source distribution\n"
python3 setup.py sdist bdist_wheel

printf "> Upload to PyPI\n"
sudo python3 -m twine upload dist/*

printf "> Install updated binary\n"
sudo pip3 install TermIO --upgrade
