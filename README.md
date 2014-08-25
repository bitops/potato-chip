Overview
=========

A simple Sinatra app that can run on Heroku.

Really just an endpoint in case you have a local client and needs to POST something.

For a JSON variation, see [this branch](https://github.com/bitops/potato-chip/tree/json-accept-and-response).

How to use
==========
The ```'/'``` endpoint responds to GET and returns "OK". If you POST to ```'/chips'``` you'll get different messages depending on the parameters you pass in.

If you post with a key of "potato" you get one string back, if you post with "potato=chip" you get a different result. All other parameters return the same message.

Usage
=====

The usual bundler ceremony:

```shell
bundle install
```

Start the server:

```shell
# start the server on port 4567 
shotgun -p 4567 potato_chip.rb
```

Test with curl:

```shell
curl -d 'potato=chip' http://localhost:4567/chips
```

You should see a delightful message reminding you of a famous meme.

Heroku
======

Assuming you have all the necessary Heroku deps in place this should be simple.

```shell
heroku create
# add the necessary repo to your git remotes...
git push heroku master
```

Now you're off and running!
