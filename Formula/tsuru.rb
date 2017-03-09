class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "21bade0f6a1914980be50aa44a6e312ceaad5b1a2a342e44d211df1ff4b644cc"
  
  depends_on "go"

  def install
    bin.install "tsuru"
  end
end
