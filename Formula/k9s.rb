# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k8sk9s.dev/"
  version "0.13.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.13.8/k9s_0.13.8_Darwin_x86_64.tar.gz"
    sha256 "aa2dab714ca09f186e593f043f38bbcd35038897dc52984ec5d9c43e2bb477ac"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.13.8/k9s_0.13.8_Linux_x86_64.tar.gz"
      sha256 "6bc889e2af25949969b5c4d2bd74fea428b7a075b57bfe8fbf71216475f588c2"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.13.8/k9s_0.13.8_Linux_arm64.tar.gz"
        sha256 "e58aa3a4f7eddbae8397cd712eb3bcb86ff365e3bc7c2182bb1be687e6c135c5"
      else
        url "https://github.com/derailed/k9s/releases/download/v0.13.8/k9s_0.13.8_Linux_armv6.tar.gz"
        sha256 "cb59a1611fa49b232ebf43a09c6a5e1fd9af5d4e7d3bee3c070743b47338a2ed"
      end
    end
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
