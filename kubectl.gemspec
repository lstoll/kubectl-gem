Gem::Specification.new do |s|
  s.name        = 'kubectl'
  s.version     = File.read("VERSION").strip
  s.licenses    = ['Apache-2.0']
  s.summary     = "Wrapper for kubectl"
  s.description = "Embeds and provides a really shallow wrapper for the kubectl binary"
  s.authors     = ["Lincoln Stoll"]
  s.email       = 'lincoln.stoll@gmail.com'
  s.files       = Dir.glob("{lib,kube-bins}/**/*") +["VERSION", "README.md"]
  s.homepage    = 'https://github.com/lstoll/kubectl-gem'
end
