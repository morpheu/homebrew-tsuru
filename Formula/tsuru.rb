class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "9b7ad877bc4143637e0d1f897a132a1850e47522c5546f41bd94770dd1a16405"
  
  depends_on "go"

  def install
    bin.install "tsuru"
  end
end
