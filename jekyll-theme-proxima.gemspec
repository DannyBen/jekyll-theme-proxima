Gem::Specification.new do |s|
  s.name          = 'jekyll-theme-proxima'
  s.version       = '0.1.0'
  s.license       = 'CC0-1.0'
  s.authors       = ['Danny Ben Shitrit']
  s.homepage      = 'https://github.com/DannyBen/proxima'
  s.summary       = 'Proxima is a theme for GitHub Pages, with GitHub-like styling'

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  s.platform = Gem::Platform::RUBY
  
  s.add_runtime_dependency 'jekyll', '~> 3.5'
  s.add_runtime_dependency 'jekyll-seo-tag', '~> 2.0'
  
  s.add_development_dependency 'runfile', '~> 0.10'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
end
