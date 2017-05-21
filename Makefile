.PHONY: build fetch_k8s_bins write_version

KUBE_VERSION := 1.6.4
GEM_VERSION := $(KUBE_VERSION)

build: fetch_k8s_bins write_version
	gem build kubectl.gemspec

fetch_k8s_bins:
	rm -rf kube-bins
	mkdir -p kube-bins
	curl -o kube-bins/kubectl-linux-x86_64 https://storage.googleapis.com/kubernetes-release/release/v$(KUBE_VERSION)/bin/linux/amd64/kubectl
	curl -o kube-bins/kubectl-darwin-x86_64 https://storage.googleapis.com/kubernetes-release/release/v$(KUBE_VERSION)/bin/linux/amd64/kubectl

write_version:
	echo $(GEM_VERSION) > VERSION