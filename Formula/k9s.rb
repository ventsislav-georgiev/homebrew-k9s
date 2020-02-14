# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k8sk9s.dev/"
  version "0.15.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.15.0/k9s_Darwin_x86_64.tar.gz"
    sha256 "b307847665bcdfd28a2b0417b8bbed99fe79d4bf2289f9b229074af227767ef3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.15.0/k9s_Linux_x86_64.tar.gz"
      sha256 "16c6c4511fb899a1a72f63face6a8b2e0979b9b0322fb6ca9c192ac705f760d2"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.15.0/k9s_Linux_arm64.tar.gz"
        sha256 "4f1f4133fb3e1b1e7a0f5c4fd84a49fdd7856b1b6bc7178c8489ad3a69ed77a1"
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
