class Pairqr < Formula
  desc "Pair Android devices for wireless ADB debugging by scanning a QR code"
  homepage "https://github.com/richard-fairthorne/pairqr"
  version "0.1.13"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.13/pairqr-macos-universal.tar.gz"
    sha256 "587c57a071b4cc8e8ca21316afefc74c572b134f922bb6241aae3ce301481811"
  end

  on_linux do
    on_intel do
      url "https://github.com/richard-fairthorne/pairqr/releases/download/v0.1.13/pairqr-linux-x86_64.tar.gz"
      sha256 "5577f0572da727507ed1c7422f6e6c6149290994a13f7324208ff3666b6b58b0"
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
