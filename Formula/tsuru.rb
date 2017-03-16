class Tsuru < Formula
  desc "tsuru-client is a tsuru command line tool for application developers."
  homepage "https://tsuru-client.readthedocs.org/"
  url "https://github.com/morpheu/tsuru-client/releases/download/1.2.22/tsuru_1.2.22_macOS_amd64.tar.gz"
  version "1.2.22"
  sha256 "a8c4d838616b3b3d44bbeb2fbb1be9d87d11cfd849717a154edafe44857a4b48"

  def install
    bin.install "tsuru"
    bash_completion.install "misc/bash-completion" => "tsuru"
    zsh_completion.install "misc/zsh-completion" => "tsuru"
    
  end
end
