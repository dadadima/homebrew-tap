class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "file:///Users/dima/Dev/bqtop/dist/v0.3.0/bqtop-0.3.0-macos-arm64.tar.gz"
      sha256 "afbe771f93955cd5799e3d6cbe8a5cb2ffe71db85a93112ae6e6fb3e893d0c5f"
    end
    on_intel do
      url "file:///Users/dima/Dev/bqtop/dist/v0.3.0/bqtop-0.3.0-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "file:///Users/dima/Dev/bqtop/dist/v0.3.0/bqtop-0.3.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "file:///Users/dima/Dev/bqtop/dist/v0.3.0/bqtop-0.3.0-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.0", shell_output("#{bin}/bqtop --version")
  end
end
