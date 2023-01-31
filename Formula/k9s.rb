# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.27.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/k9s/releases/download/v0.27.2/k9s_Darwin_arm64.tar.gz"
      sha256 "13e71b63da6f198758ffc5840191d7a4d9f116457e4d6f06d60164ae436f6c64"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.27.2/k9s_Darwin_amd64.tar.gz"
      sha256 "aac311825f7d90f20eb2769d7da28d3fa59ceb48652c2615dd630f77b41eff98"

      def install
        bin.install "k9s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/k9s/releases/download/v0.27.2/k9s_Linux_arm64.tar.gz"
      sha256 "e745166277c2eab7e1d06fcc3492d01efa6a5a6bd0c77a068f47a49d4d8e7272"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.27.2/k9s_Linux_amd64.tar.gz"
      sha256 "8d4bfb9bfee8e28300305746002002b27f47badbd19e25a503d38172006e1170"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
