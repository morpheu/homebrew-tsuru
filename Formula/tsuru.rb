class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.23/tsuru_1.2.23_macOS_amd64.tar.gz"
  version "1.2.23"
  sha256 "5b54110e0f4f6062112cc6f7b563b977409c1f12874889c69f9b5e05ced88f7a"

  def install
    bin.install "tsuru"
    bash_completion.install "misc/bash-completion" => "tsuru"
    zsh_completion.install "misc/zsh-completion" => "tsuru"
    
  end
end
