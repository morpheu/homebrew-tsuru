class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "cc7f583699f23671baca3a1c349ef72fa6740655768090d3dcccf435a3cbade8"
  
  depends_on "go"

  def install
    bin.install "tsuru"
  end
end
