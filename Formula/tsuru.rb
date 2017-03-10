class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "9c8ba1312934953f44cb759f9b37c1070cdb81e040c662be51160ba86d68ff14"
  
  depends_on "go"

  def install
    bin.install "tsuru"
  end
end
