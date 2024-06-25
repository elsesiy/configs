#!/usr/bin/env bash

set -euo pipefail

formulae=(
	anchore/grype/grype
	bazel
	exercism
	exiftool
	ffmpeg
	fizz
	gradle
	highlight
	httpie
	hyperfine
	kind
	kubebuilder
	kubernetes-cli
	maven
	noahgorstein/tap/jqp
	ncdu
	nghttp2
	openjdk@17
	pdfgrep
	perl
	postgresql@14
	protobuf
	python@3.10
	python@3.11
	python@3.8
	rbenv
	ruby
	ruby@3.1
	rustup-init
	vault
	vercel-cli
)

casks=(
	brave-browser
	cryptomator
	ferdium
	insomnia
	java
	keepassxc
	keybase
	meld
	osxfuse
	paw
	rectangle
	steam
	superproductivity
	uhk-agent
	virtualbox
	wezterm
	wireshark
	zoom
)

for f in "${formulae[@]}"; do
	brew install "$f"
done

for c in "${casks[@]}"; do
	brew install --cask "$c"
done
