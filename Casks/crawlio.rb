cask "crawlio" do
  version "1.0.0"
  sha256 "PLACEHOLDER_DMG_SHA256"

  url "https://github.com/Crawlio-app/crawlio/releases/download/v#{version}/Crawlio-#{version}.dmg"
  name "Crawlio"
  desc "Website downloader — crawl, analyze, and export entire sites"
  homepage "https://crawlio.app"

  depends_on macos: ">= :sequoia"

  app "Crawlio.app"

  binary "#{appdir}/Crawlio.app/Contents/Helpers/CrawlioCLI", target: "crawlio"

  zap trash: [
    "~/Library/Application Support/Crawlio",
    "~/Library/Caches/com.crawlio.app",
    "~/Library/HTTPStorages/com.crawlio.app",
    "~/Library/Logs/Crawlio",
    "~/Library/Preferences/com.crawlio.app.plist",
  ]
end
