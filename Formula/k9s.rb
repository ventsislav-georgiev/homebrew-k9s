# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.31.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/k9s/releases/download/v0.31.2/k9s_Darwin_arm64.tar.gz"
      sha256 "2bd82e5c4b1a33385056d948d1776e978045991058034bce51c8be47773c1605"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.31.2/k9s_Darwin_amd64.tar.gz"
      sha256 "1c04b95b2c3f0b326a5e77cd1849faeadcc286f3900b447fe86a2dcd361a28c0"

      def install
        bin.install "k9s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/k9s/releases/download/v0.31.2/k9s_Linux_arm64.tar.gz"
      sha256 "64769ec05d0278c68cd8fcc800685d9f0604e4c4291d7e86b35b620a6a23746a"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.31.2/k9s_Linux_amd64.tar.gz"
      sha256 "a523372ede51b2f2e2bc9503311445378c22e0702642c9bcde5e4520786e55b0"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
