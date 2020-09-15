# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.22.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.22.0/k9s_Darwin_x86_64.tar.gz"
    sha256 "d470e6c77511bfc9b16dbdcae4bf3f1340d35386aa45f0ef480a8c5adc8ab258"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.22.0/k9s_Linux_x86_64.tar.gz"
      sha256 "10bac186387a3d796a5a9d6249289f0165d2bc7126f46fda4233fec2e14213c8"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.22.0/k9s_Linux_arm64.tar.gz"
        sha256 "c6936c84dec9c2034e6a9790df640ae2be1541d18b693916230ef422f2fd1976"
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
