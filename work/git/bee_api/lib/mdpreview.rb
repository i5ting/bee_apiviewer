require "mdpreview/version"
require 'mdpreview/translator' 

# require 'profile'
require 'net/http'
require 'uri'

# require "iconv"  
#   
# class String  
#   def to_gbk  
#     Iconv.iconv("GBK//IGNORE", "UTF-8//IGNORE", self).to_s  
#   end  
#   
#   def to_utf8  
#     #p "my own string"  
#     Iconv.iconv("UTF-8//IGNORE", "GBK//IGNORE", self).to_s  
#   end  
#   
#   def to_utf8_valid  
#   
#     if !self.valid_encoding?  
#       ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')  
#       return ic.iconv(self)  
#     end  
#     self  
#   end  
#   
# end  

module Kernel  
  def easy_get(url)
    puts "\n[GET]  #{url}\n"
    # p Net::HTTP.get_print URI.parse(url)
    
    resp = Net::HTTP.get_response(URI.parse(url))
    data = resp.body
    p "json = "+data

    Mdpreview.create_json_file(data)
    # we convert the returned JSON data to native Ruby
    # data structure - a hash
    # result = JSON.parse(data)
    
  end
  
  
  def easy_post(url,params,&block)
    res = Net::HTTP.post_form(URI.parse(url),params)
    puts "\n\n[POST] #{url}?#{params.to_s}\n"
    p "#{res}\n#{res.body}"
    
    Mdpreview.create_json_file(res.body)
    
    if block_given?
      block.call(res)
    end
  end
end


module Mdpreview
  # Your code goes here...
  def self.hi(a)  
    translator = Translator.new(a)  
    translator.hi  
    # puts version info
    p VERSION
    
  end
  
  def self.create_json_file(data)  
    Translator.create_json_file(data) 
    # puts version info
    p VERSION
    
  end
  
  
end
