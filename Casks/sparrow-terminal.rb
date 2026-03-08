cask "sparrow-terminal" do
  version "1.4.1-beta"
  sha256 "442e9b3dbba0dd223af0c722781f21aa923f51b5d975416be5ed992c49f509fd"

  url "https://github.com/sagarmk/sparrow-terminal/releases/download/v#{version}/sparrow-#{version}-arm64.dmg"
  name "Sparrow"
  desc "A terminal designed for AI agents"
  homepage "https://sparrowterminal.com"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "sparrow.app"

  zap trash: [
    "~/Library/Application Support/sparrow",
    "~/Library/Preferences/com.sparrow.terminal.plist",
    "~/Library/Caches/com.sparrow.terminal",
  ]
end
