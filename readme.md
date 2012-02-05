# Software Install
Instructions assume Ruby Version Manager is installed.  
SL_Ruby requires JRuby  
`rvm install jruby`.  
`rvm use jruby`

# RubyGems
Required RubyGems.  
`rvm gem install eventmachine` - This & Thin are optional. However, they significantly speed up sinatra.  
`rvm gem install thin` - Optional ^^^ See above ^^  
`rvm gem install sinatra`  
`rvm gem install jruby_sandbox`  
`rvm gem install httparty`  

# Building the Code (for Non-Developers)
To build the LSL & Ruby code just run `ruby --1.9 scrape.rb`.  
The code in `script.lsl` and `script_slave.lsl` need to be copied into two seperate scripts inside an object.  
There are several arguments at the top of `script.lsl`.

# Building the Code (for Developers)
Building the code has several steps. Running `ruby --1.9 scrape.rb` automatically scrapes the LSL wiki for all of the function names & information into `all_functions.txt` (Usually takes several minutes). It automatically runs `generate_code.rb` once it's done scraping. `scrape.rb` should only be run once (or when new functions are added).  
Most of the time you will want to use `ruby --1.9 generate_code.rb`. This just generates the code.  
At the top of `generate_code.rb` there is a variable called `$obsfucate` change it to `true` or `false` for readability.

# Running the RubyScript server
Just run `rvmsudo ruby --1.9 server.rb` in a bash (or similar) shell.
