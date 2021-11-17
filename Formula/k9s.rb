# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.25.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/k9s/releases/download/v0.25.3/k9s_Darwin_arm64.tar.gz"
      sha256 "b6383545bce43911ede0716acb763ed97346d667c4cacf874ee44ed6bb1c9119"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.25.3/k9s_Darwin_x86_64.tar.gz"
      sha256 "11cd1e8c8109c62896fe92db35e4417af6a01550cfadf4f1d8b1e43b3495e4ee"

      def install
        bin.install "k9s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/k9s/releases/download/v0.25.3/k9s_Linux_arm64.tar.gz"
      sha256 "a4991aa17ab00c5e90d53fdd8619ed43ca3ff3dfeb15bc68dd7d3bee7aa6bd50"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.25.3/k9s_Linux_x86_64.tar.gz"
      sha256 "88effd358f8251da5d14956799d0c7619aa90d9aac8142dabe820e2a67944429"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
