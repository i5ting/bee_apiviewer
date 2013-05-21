# Bee API  Viewer

this is a gem for preview and edit markdown file use brower.most time we like use teminal and vim,so i write this gem.

## Installation

Add this line to your application's Gemfile:

    gem 'mdpreview'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mdpreview

## Usage

	$ mdpreview -f README.md

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Test

 
ruby -Ilib bin/bee_api -g http://top.baidu.com/news/pagination\?pageno\=1

ruby -Ilib bin/bee_api -f t1.json


	{
	    "url": "http://platform.sina.com.cn/kzx/userLoginNew",
	    "params": {
	        "app_key": "3672927202",
	        "client_id": "809359998",
	        "client_secret": "16eb6b6412f503c2bb90803fe256a57b",
	        "format": "json",
	        "grant_type": "password",
	        "identity": "86c26f7638fce2966ffee46bbb112d91",
	        "password": "ssl0317",
	        "username": "shiren1118"
	    },
	    "method": "post"
	}
	
ruby -Ilib bin/bee_api -f t2.json

	{
	    "url": "http://top.baidu.com/news/pagination\?pageno\=1",
	    "params": {
	    },
	    "method": "get"
	}
	