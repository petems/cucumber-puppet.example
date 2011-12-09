Given /^a node with role "([^\"]*)"$/ do |role|
  # server roles map to higher level puppet classes
  # (in manifests/templates.pp)
  @klass = role
end
