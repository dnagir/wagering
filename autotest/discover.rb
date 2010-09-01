Autotest.add_discovery { "rails" }
Autotest.add_discovery { "rspec2" }
Autotest.add_hook :initialize do |at|
  at.add_exception('db/')
  at.add_exception('bin/')
  at.add_exception('doc/')
  at.add_exception('log/')
  at.add_exception('public/')
  at.add_exception('tmp/')
end
