class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.6/bqtop-0.3.6-macos-arm64.tar.gz"
      sha256 "7772b9d1d3b36765945443a50f0f96ea84f155ddbe5a6d6bd4737a9d3dadaac6"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.6/bqtop-0.3.6-macos-x86_64.tar.gz"
      sha256 "1ecc0e80aaf7fc189348a3bcbeacb6a23ad17fadac07bad19fb47e045b493df1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.6/bqtop-0.3.6-linux-arm64.tar.gz"
      sha256 "552444fe1a2f771b9fd8431926e6a75d0dd98e84962ec213c9e1e6f2c3f1c068"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.6/bqtop-0.3.6-linux-x86_64.tar.gz"
      sha256 "8cc5e5f7a4ebb01503898ba148b0043fe24d281560e4617a59a2fca3de1a7529"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.6", shell_output("#{bin}/bqtop --version")
  end
end
