class Crawlio < Formula
  desc "Website downloader for macOS — crawl, extract, and export sites from the terminal"
  homepage "https://crawlio.app"
  version "1.0.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/Crawlio-app/crawlio/releases/download/v#{version}/crawlio-cli-#{version}-arm64.tar.gz"
    sha256 "PLACEHOLDER_ARM64_SHA256"
  end

  on_intel do
    url "https://github.com/Crawlio-app/crawlio/releases/download/v#{version}/crawlio-cli-#{version}-x86_64.tar.gz"
    sha256 "PLACEHOLDER_X86_64_SHA256"
  end

  depends_on :macos
  depends_on macos: :sequoia

  def install
    bin.install "crawlio"
  end

  def caveats
    <<~EOS
      Crawlio CLI connects to the running Crawlio.app via HTTP on localhost.
      For full functionality, install the desktop app:

        brew install --cask crawlio-app/tap/crawlio

      Or download from https://crawlio.app
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crawlio version")
  end
end
