# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef!" do
  level :info
end

cb_found = cookbook_in_context?('example', '1.9.0')

log "cookbook found in context: #{cb_found}" do
  level :info
end