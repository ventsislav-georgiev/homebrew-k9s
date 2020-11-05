# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.23.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.23.5/k9s_Darwin_x86_64.tar.gz"
    sha256 "6bb6f3ce3fb3efd49e870b3f7de16afdc4766d935a43e6d86c6b3c2ae7b0aff5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.23.5/k9s_Linux_x86_64.tar.gz"
      sha256 "7eaa66b8a42138ad01eee75b9165c4b2f971b5de0b07e4431fcaa4d708a5f48a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.23.5/k9s_Linux_arm64.tar.gz"
        sha256 "9549b236407bcc7435f3c864b48858a0258ed1ca6278dd23087e8257407dfd2e"
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
