# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9scli.io/"
  version "0.32.7-custom.2"

  on_macos do
    on_arm do
      url "https://github.com/ventsislav-georgiev/homebrew-k9s/releases/download/v0.32.7-custom.2/k9s_Darwin_arm64.tar.gz"
      sha256 "b978a150f67838ed00489002dbf9ae82caf91f5f50dc76ecaaeeb7f10f1285f6"

      def install
        bin.install "k9s"
      end
    end
  end

  test do
    system "k9s version"
  end
end
