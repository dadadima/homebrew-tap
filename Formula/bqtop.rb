class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.5/bqtop-0.3.5-macos-arm64.tar.gz"
      sha256 "0e29440bbfa1aaeafebbc71c277ae22d97962a3e736ef8cef65d403b762e8bf9"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.5/bqtop-0.3.5-macos-x86_64.tar.gz"
      sha256 "06388ecb0bec020fbaf3fe8f651ea85bf49085ef4b4a593c74fb5bb76e3d4633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.5/bqtop-0.3.5-linux-arm64.tar.gz"
      sha256 "4f90b8b35684a5e1b10bbd576898b2acaf443942e502deed2d8f97d320b366b8"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.5/bqtop-0.3.5-linux-x86_64.tar.gz"
      sha256 "741d4ba60cca6969a0cc9e97b2c9778028e027860556be266df488b61311e185"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.5", shell_output("#{bin}/bqtop --version")
  end
end
