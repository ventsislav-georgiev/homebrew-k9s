# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  url "https://github.com/derailed/k9s/releases/download/0.7.9/k9s_0.7.9_Darwin_x86_64.tar.gz"
  version "0.7.9"
  sha256 "4504a9aedaa9d0d639e7d32da2ced08b5ccc1acc19dc19bcc82b48ac87045d00"

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
