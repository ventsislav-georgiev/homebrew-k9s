# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.23.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.23.0/k9s_Darwin_x86_64.tar.gz"
    sha256 "a337473fe8b29600582cdeaf1f209e0b340bda082ffc43deda1e09751832e9c1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.23.0/k9s_Linux_x86_64.tar.gz"
      sha256 "f5dc982edde5b891d644ec4c7b1f5e7a0bcf365e70413a5464031a6742b9ee82"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.23.0/k9s_Linux_arm64.tar.gz"
        sha256 "eaee5a8f6e2df7305487dd5d3b164a6432aa33412fe4380176192dd996ef0f17"
      else
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
