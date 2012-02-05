# Software Install
Instructions assume Ruby Version Manager is installed.  
SL_Ruby requires JRuby  
`rvm install jruby`.  
`rvm use jruby`

# RubyGems
Required RubyGems.  
`rvm gem install jruby_sandbox`  
`rvm gem install httparty`  

# Building Code (This generates the ruby & LSL code) & Running.
1. scrape the LSL wiki for function names (you should only have to do this the first time & whenever new functions are added.) `ruby --1.9 scrape.rb`
2. Generate the `ruby --1.9 generate.rb`
3. Run the server: `rvmsudo ruby --1.9 server.rb`
4. Copy the generated: `script.lsl` into an object.
