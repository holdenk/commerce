# useful steps for debugging in feature files
require 'coderay'
require 'ruby-debug'

module DebugHelper
  # Use this when in an actual debugging session
  def peek
    output = CodeRay.scan(page.body, :html).term
    dbg_puts '-- peeking at body'
    dbg_puts output
    dbg_puts '-- end peeking at body'
  end  
  
  # Use this in step definitions
  def peek_body
    output = CodeRay.scan(page.body, :html).term
    puts '-- peeking at body'
    puts output
    puts '-- end peeking at body'
  end
end

World(DebugHelper)

Then /^peek body$/ do
  peek_body
end

Then /^pending (.+)/ do |msg|
  pending msg
end
