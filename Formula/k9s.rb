# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/k9s/releases/download/v0.25.0/k9s_Darwin_arm64.tar.gz"
      sha256 "3d152ab8115fbe38876e58da6aa14ca97f250f23d411fb8913e77fab07f43f03"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.25.0/k9s_Darwin_x86_64.tar.gz"
      sha256 "284923d08740b2cac8a295bbaf5ccf29eaded6477f93a9bb0c1b49370503126b"

      def install
        bin.install "k9s"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/k9s/releases/download/v0.25.0/k9s_Linux_arm64.tar.gz"
      sha256 "d12e1b4db07e6384fb3277d4c4add99db95e163a1bce8ce6909c3ac0721f5154"

      def install
        bin.install "k9s"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.25.0/k9s_Linux_x86_64.tar.gz"
      sha256 "6714851acca9bc4f19c00a4b96cf3ea83b3889b517e03a5b4910b5a02e563c2e"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
