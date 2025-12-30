class Pairqr < Formula
  desc "Pair Android devices for wireless ADB debugging by scanning a QR code"
  homepage "https://github.com/richard-fairthorne/pairqr"
  version "0.1.12"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.12/pairqr-macos-universal.tar.gz"
    sha256 "f809c82d0d023c20796c867106abb976b80da88fc7c81a27d2dd4d59808b56c2"
  end

  on_linux do
    on_intel do
      url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.12/pairqr-linux-x86_64.tar.gz"
      sha256 "1abca8261a2239d09003315c38f3eaf2a52801dd9f5cf1984ef808433c3f1540"
    end
  end

  def install
    bin.install "pairqr"
  end

  def caveats
    <<~EOS
      pairqr requires ADB (Android Debug Bridge) to be installed and in your PATH.
      Install it with:
        brew install --cask android-platform-tools
    EOS
  end

  test do
    assert_predicate bin/"pairqr", :executable?
  end
end
