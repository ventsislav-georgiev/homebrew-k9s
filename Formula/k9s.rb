# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.21.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.21.10/k9s_Darwin_x86_64.tar.gz"
    sha256 "a41338742557a3553db30744831687652e38531f6f0b8482b81da9e1a8fea550"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.21.10/k9s_Linux_x86_64.tar.gz"
      sha256 "52b97e46f1853d2dc76aec677e5f382f5c7d1955c873220dbf1fa2c8f23bb5bf"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.21.10/k9s_Linux_arm64.tar.gz"
        sha256 "8510f1d9ee16108b5e90e294d707438f2d32fc6c2304035a2ef5e5f428eaba82"
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
