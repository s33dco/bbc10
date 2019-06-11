Gem::Specification.new do |s|
  s.name         = "bbc10"
  s.version      = "1.0.0"
  s.licenses     = ['MIT']
  s.summary      = "Scrape the ten most read stories from www.bbc.co.uk to your terminal window"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.author       = "s33d"
  s.email        = "code@s33d.co"
  s.files         = Dir["{bin,lib}/**/*"] + %w(LICENSE README)
  s.homepage     = "https://github.com/s33dco/bbc10"
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'bbc10' ]
  s.required_ruby_version = '>=2.5'

  s.post_install_message = "Thanks for installing ♥️ s33dco"
end
