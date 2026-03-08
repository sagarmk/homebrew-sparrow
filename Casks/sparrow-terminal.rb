cask "sparrow-terminal" do
  version "1.5.0-beta"
  sha256 "17fb6897e468e83bc369cf1a6e68f584145b7e67ebafe4043fa410cb7406dbb7"

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
