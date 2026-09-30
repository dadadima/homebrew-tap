class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.2/bqtop-0.3.2-macos-arm64.tar.gz"
      sha256 "9e842c703f5618fb81c742f465050298a43b846504a08c865812f42081578e8c"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.2/bqtop-0.3.2-macos-x86_64.tar.gz"
      sha256 "e99bec0541d66558093bab343d4bf5bd2c870972a6b1637254ffa9baec5422e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.2/bqtop-0.3.2-linux-arm64.tar.gz"
      sha256 "f5cedc34d32b428a22f5f8021e5545c6baf132c521b864ed599463aab40b7280"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.2/bqtop-0.3.2-linux-x86_64.tar.gz"
      sha256 "27a7b125eef9a84689fb65148976f802f2ea7d2d5b7b3379e9ea750430f19cf2"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.2", shell_output("#{bin}/bqtop --version")
  end
end
