cask "sparrow-terminal" do
  version "1.5.0-beta"
  sha256 "5eb3349bbccb2f8f6565b346812a7373dc9c347664e7a2bf4670129d178f1d08"

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
