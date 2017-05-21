require 'rubygems'

class Kubectl
    def self.bin_path
        os = Gem::Platform.local.os
        arch = Gem::Platform.local.cpu
        binpath = File.expand_path(File.join(File.dirname(__FILE__), "..", "kube-bins", "kubectl-#{os}-#{arch}"))
        if !File.exist?(binpath)
            raise "No kubectl binary for #{os} #{arch}"
        end
        binpath
    end
end
