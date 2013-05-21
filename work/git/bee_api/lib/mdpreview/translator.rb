require 'pathname'
require 'FileUtils'

class Mdpreview::Translator  
  def initialize(source_file_path) 
    #源文件路径
    @source_file_path = source_file_path    
    #gem跟目录                          
    @gem_root_path = File.expand_path('../', @source_file_path)   
    #editor path
    @editor_path =  Pathname.new(File.expand_path('../../../vendor/examples', __FILE__)).realpath.to_s  
    
    p "@gem root_path:::"+@gem_root_path  
    p "@src file_path:::"+@source_file_path
    p "@editor  path :::"+@editor_path
    
  end  
  
  def hi
      generate_meta_js
      cp_source_file_to_cur_file
      open_in_browser
  end
  
  def open_in_browser
    p `open #{@editor_path}/03_switch_mode.html`
  end
  
  def generate_meta_js
    f=File.new(File.join(@editor_path,"meta.js"), "w+")
    f.puts("#{@source_file_path}")
  end
  
  def cp_source_file_to_cur_file
    f=File.new(File.join(@editor_path,"cur.file"), "w+")
    FileUtils.cp @source_file_path,f
  end
  
  def self.create_json_file(data)
    #gem跟目录                          
    gem_root_path = File.expand_path('../', @source_file_path)   
    f=File.new(File.join(gem_root_path,"data.json"), "w+")
    f.puts("#{data}")
    
    editor_path =  Pathname.new(File.expand_path('../../../vendor/examples', __FILE__)).realpath.to_s  
    
    f=File.new(File.join(editor_path,"meta.js"), "w+")
    f.puts("#{gem_root_path}/data.json")
    
    f.close
    p "#{data}"
    c=File.new(File.join(editor_path,"cur.file"), "w+")
    c.puts("#{data}")
    c.close
    
    p `open #{editor_path}/03_switch_mode.html`
    
  end
  
end  
