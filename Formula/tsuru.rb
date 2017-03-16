class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.20/tsuru_1.2.20_macOS_amd64.tar.gz"
  version "1.2.20"
  sha256 "3d666e5b7870005fa71fa1a332105b7eb1905237112c95f2ac969a1449bbc985"

  def install
    bin.install "tsuru"
    bash_completion.install "misc/bash-completion" => "tsuru"
    zsh_completion.install "misc/zsh-completion" => "tsuru"
    
  end
end
