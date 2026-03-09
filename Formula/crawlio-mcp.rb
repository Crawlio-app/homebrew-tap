class CrawlioMcp < Formula
  desc "MCP server for Crawlio — control the website crawler from AI assistants"
  homepage "https://crawlio.app"
  version "1.6.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/Crawlio-app/crawlio/releases/download/v#{version}/crawlio-mcp-#{version}-arm64.tar.gz"
    sha256 "PLACEHOLDER_ARM64_SHA256"
  end

  on_intel do
    url "https://github.com/Crawlio-app/crawlio/releases/download/v#{version}/crawlio-mcp-#{version}-x86_64.tar.gz"
    sha256 "PLACEHOLDER_X86_64_SHA256"
  end

  depends_on :macos
  depends_on macos: :sequoia

  def install
    bin.install "crawlio-mcp"
  end

  def caveats
    <<~EOS
      Quick setup:  crawlio-mcp init
      Crawlio.app must be running for control tools:
        brew install --cask crawlio-app/tap/crawlio
    EOS
  end

  test do
    assert_match "MCP Server Init", shell_output("#{bin}/crawlio-mcp init --dry-run 2>&1")
  end
end
