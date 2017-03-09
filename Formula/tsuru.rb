class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.0/tsuru_1.2.0_macOS_amd64.tar.gz"
  version "1.2.0"
  sha256 "17784f4e892ca7f9bd9bb88f7d02a4ecc55cdfe444d119ab83b2999d544f56c8"
  
  depends_on "go"

  def install
    system "bash", "-c", "test -n \"$(go version | awk '{print \$3}' | perl -ne 'print if /go1\.[0-4](\.[0-9]+)?$/')\" && echo ERROR: tsuru requires Go 1.5 or later, your version is: $(go version) && exit 1 || echo proceeding ..."
system "bash", "-c", "GOPATH=\"$PWD\" go build -o tsuru github.com/tsuru/tsuru-client/tsuru"
ENV['TSURU_PATH'] = "./tsuru"
bin.install "tsuru"
bash_completion.install "src/github.com/tsuru/tsuru-client/misc/bash-completion" => "tsuru"
zsh_completion.install "src/github.com/tsuru/tsuru-client/misc/zsh-completion" => "tsuru" 

  end
end
