$gemspec = Gem::Specification.new do |s|
  s.name     = 'synapses-cas'
  s.version  = '0.1.12'
  s.authors  = ["Synapses Group"]
  s.email    = ["tiago@synapses.com.br"]
  s.homepage = 'https://github.com/synapsesgroup/synapses-cas'
  s.platform = Gem::Platform::RUBY
  s.summary  = %q{Provides single sign-on authentication for web applications using the CAS protocol.}
  s.description  = %q{Provides single sign-on authentication for web applications using the CAS protocol.}

  s.files  = [
    "CHANGELOG", "LICENSE", "README.md", "Rakefile", "setup.rb",
    "bin/*", "db/**/*", "lib/**/*.rb", "public/**/*", "locales/**/*", "resources/*.*",
    "config.ru", "config/**/*", "tasks/**/*.rake", "vendor/**/*", "script/*", "lib/**/*.erb", "lib/**/*.builder",
    "Gemfile", "synapses-cas.gemspec"
  ].map{|p| Dir[p]}.flatten

  s.test_files = `git ls-files -- spec`.split("\n")

  s.executables = ["synapses-cas"]
  s.bindir = "bin"
  s.require_path = "lib"

  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.md"]

  s.has_rdoc = true
  s.post_install_message = "For more information on RubyCAS-Server, see http://code.google.com/p/rubycas-server"

  s.add_dependency("activerecord", ">= 2.3.12", "< 4.0")
  s.add_dependency("activesupport", ">= 2.3.12", "< 4.0")
  s.add_dependency("activeresource", ">= 2.3.12", "< 4.0")
  s.add_dependency("sinatra", "~> 1.0")
  s.add_dependency("sinatra-r18n", '~> 1.1.0')
  s.add_dependency("crypt-isaac", "~> 0.9.1")
  s.add_dependency("pg", )


  s.add_dependency("bcrypt-ruby")
  s.add_dependency("net-ldap", "~> 0.1.1")
  s.add_dependency("sqlite3", "~> 1.3.1")

  s.add_dependency("rack-test")
  s.add_dependency("capybara", '1.1.2')
  s.add_dependency("rspec")
  s.add_dependency("rspec-core")
  s.add_dependency("rake", "0.8.7")


  s.rdoc_options = [
    '--quiet', '--title', 'RubyCAS-Server Documentation', '--opname',
    'index.html', '--line-numbers', '--main', 'README.md', '--inline-source'
  ]
end
