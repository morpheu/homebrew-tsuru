class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "049a0cda38bd64a018c2798a96d3eb7531d85fbd2683136451122c863949e135"
  
  depends_on "go"

  def install
    bin.install "tsuru"
  end
end
