class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.15/tsuru_1.2.15_macOS_amd64.tar.gz"
  version "1.2.15"
  sha256 "862bcb52ef90b692a14c6eb41af63bfa9f919dd0d66b0e59c435d237bdb76eef"
  
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
