class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.1/bqtop-0.3.1-macos-arm64.tar.gz"
      sha256 "b87c2ebe4ab86a2a7ee006dba14d60c4f70930f7ee3864b03bc6fd3ab18626d1"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.1/bqtop-0.3.1-macos-x86_64.tar.gz"
      sha256 "dc92ba20541ee4ca11dda3ee3119a7b84ea621cd52ad984a07e4a1e1f88a0d31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.1/bqtop-0.3.1-linux-arm64.tar.gz"
      sha256 "d972150d3a4018a543f53492ea5e856374e7b07c8a4200565cd63aac05a60a9c"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.1/bqtop-0.3.1-linux-x86_64.tar.gz"
      sha256 "5ac46d33480c078cd26bd74075f3418fd72708483c7d220809af8a33f62fdda1"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.1", shell_output("#{bin}/bqtop --version")
  end
end
