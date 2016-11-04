# wakayamarb.org
[![Build Status](https://travis-ci.org/wakayamarb/wakayamarb.org.svg?branch=master)](https://travis-ci.org/wakayamarb/wakayamarb.org)

http://wakayamarb.org

# development

```
$ git clone https://github.com/wakayamarb/wakayamarb.org.git
$ npm install
$ npm run serve
```

# deployment

```
$ npm run production
$ scp ./wakayamarb.org.tar.gz {{user}}@wakayamarb.org:{{port}}/path/to/html/public
$ cd /path/to/html/public
$ tar xvzf wakayamarb.org.tar.gz
```
