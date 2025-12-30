class Pairqr < Formula
  desc "Pair Android devices for wireless ADB debugging by scanning a QR code"
  homepage "https://github.com/richard-fairthorne/pairqr"
  version "0.1.11"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.11/pairqr-macos-universal.tar.gz"
    sha256 "2e26a9199f2db1ebaf4135327804b6fbcd9c25587a51132d22a1482f1dd1acca"
  end

  on_linux do
    on_intel do
      url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.11/pairqr-linux-x86_64.tar.gz"
      sha256 "e477448358f396d66c05cd5c611dcb99b55ebac87b6b5fbc425e2fed09ab5909"
    end
  end

  depends_on "android-platform-tools"

  def install
    bin.install "pairqr"
  end

  test do
    assert_predicate bin/"pairqr", :executable?
  end
end
