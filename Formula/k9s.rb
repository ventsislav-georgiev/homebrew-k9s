# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.30.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/k9s/releases/download/v0.30.3/k9s_Darwin_arm64.tar.gz"
      sha256 "170df4047fd226aecac74a8cb45b31f5d8a744ca5a7fad451ffa82346f915f56"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.30.3/k9s_Darwin_amd64.tar.gz"
      sha256 "79c3a2b20b0b3e0a94c504eb2d45e0636eb5fba47201d11144135c5c3a1e3d8a"

      def install
        bin.install "k9s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/k9s/releases/download/v0.30.3/k9s_Linux_arm64.tar.gz"
      sha256 "c6b1ca09c2de74aabf54f8930c38e595e12b353fa0099835f2e5db644036b8e1"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.30.3/k9s_Linux_amd64.tar.gz"
      sha256 "3acce0cc4986d1c06e0c2c187788cd7b684d85b355f14f316882ddc008cf6909"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
