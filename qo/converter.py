#!/usr/bin/env python

import sys

# python
path=sys.argv[1]

f= open(path, 'rb') 
content= unicode(f.read(), 'koi8-r') 
f.close() 
f= open(path, 'wb') 
f.write(content.encode('utf-8')) 
f.close()
