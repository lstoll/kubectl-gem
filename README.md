# kubectl gem

Simple gem that acts as a method to ship the kubectl binary around. Linux + MacOS x64 supported. Provides one method:

```
irb(main):001:0> require 'kubectl'; Kubectl.bin_path
=> "/Users/lstoll/src/github.com/lstoll/kubectl-gem/kube-bins/kubectl-darwin-x86_64"
```