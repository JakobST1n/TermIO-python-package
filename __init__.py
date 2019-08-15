from .out import *

import os


rows, columns = map(int, os.popen('stty size', 'r').read().split())
