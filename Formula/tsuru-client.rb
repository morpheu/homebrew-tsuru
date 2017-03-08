class TsuruClient < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru-client_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "ca834af0613fb21fb808e05cbd15f17e288062476428d9024564b4768ec6843c"
  
  depends_on "go"

  def install
    bin.install "tsuru-client"
  end
end
