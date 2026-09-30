class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.4/bqtop-0.3.4-macos-arm64.tar.gz"
      sha256 "a33a1b9883a20a01c4513a65acca64ae11c51a1c60b10ecb37945b4560d97138"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.4/bqtop-0.3.4-macos-x86_64.tar.gz"
      sha256 "73579957314b777eb3cbc06b3cca7feb79068279b1147e0e44af436fb26bb899"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.4/bqtop-0.3.4-linux-arm64.tar.gz"
      sha256 "e7ce18fd96d824f14b3cc0ec6f8ba14a6b69023316bec00d492c4c61f6edcf58"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.4/bqtop-0.3.4-linux-x86_64.tar.gz"
      sha256 "e0654c9127396ba015cd7bd6651632a92c2797fe2f9332604de8a76415205610"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.4", shell_output("#{bin}/bqtop --version")
  end
end
