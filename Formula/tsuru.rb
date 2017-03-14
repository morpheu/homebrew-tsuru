class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.10/tsuru_1.2.10_macOS_amd64.tar.gz"
  version "1.2.10"
  sha256 "5f6920f51f508f212368b50c68275cc30ca3903573920994dd2bc4f7bc6ef89f"
  
  depends_on "go"

  def install
    system "bash", "-c", "test -n \"$(go version | awk '{print \$3}' | perl -ne 'print if /go1\.[0-4](\.[0-9]+)?$/')\" && echo ERROR: tsuru requires Go 1.5 or later, your version is: $(go version) && exit 1 || echo proceeding ..."
    system "bash", "-c", "GOPATH=\"$PWD\" go build -o tsuru github.com/morpheu/tsuru-client/tsuru"
    ENV['TSURU_PATH'] = "./tsuru"
    bin.install "tsuru"
    bash_completion.install "src/github.com/morpheu/tsuru-client/misc/bash-completion" => "tsuru"
    zsh_completion.install "src/github.com/morpheu/tsuru-client/misc/zsh-completion" => "tsuru"
    
  end
end
