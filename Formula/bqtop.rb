class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.0/bqtop-0.3.0-macos-arm64.tar.gz"
      sha256 "307756061ac5415480fe63b6f860cde6fea2312936f71ed5ff33d38aca3aed6e"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.0/bqtop-0.3.0-macos-x86_64.tar.gz"
      sha256 "b3ecd60f1d1eb0215c6f20748bdb5f4992ff08f73a3ff0a83923b879ea0cac14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.0/bqtop-0.3.0-linux-arm64.tar.gz"
      sha256 "38cb235a0e46ca141c5da438e4fc95255201496a106d1add0e45d485a00747dc"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.0/bqtop-0.3.0-linux-x86_64.tar.gz"
      sha256 "8154a8b77922989144f3cb81ac43cf4e375b2e7b3ce930e56bba95ae4a7b2f61"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.0", shell_output("#{bin}/bqtop --version")
  end
end
