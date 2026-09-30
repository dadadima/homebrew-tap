class Bqtop < Formula
  desc "htop for BigQuery: live jobs, principals, projects, hot tables and cost in your terminal"
  homepage "https://github.com/dadadima/bqtop"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.3/bqtop-0.3.3-macos-arm64.tar.gz"
      sha256 "401c797549c1b809be634d759104262a9e21ca1a760d4cae15acb95b4ce19a55"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.3/bqtop-0.3.3-macos-x86_64.tar.gz"
      sha256 "2184c27733d1a7823fe8645398b0bb420ebde542b9541ece3ce091d195c1ce1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.3/bqtop-0.3.3-linux-arm64.tar.gz"
      sha256 "14116c77bcf851eca1c231fb40d3ad659486cfb6e2bd804b19b12ad0bfab430d"
    end
    on_intel do
      url "https://github.com/dadadima/bqtop/releases/download/v0.3.3/bqtop-0.3.3-linux-x86_64.tar.gz"
      sha256 "91c82e31db9764bba9fc2e444b229e46db2ee1c4621e521eb823094e633d37a6"
    end
  end

  def install
    bin.install "bqtop"
  end

  test do
    assert_match "bqtop 0.3.3", shell_output("#{bin}/bqtop --version")
  end
end
