cask "sparrow-terminal" do
  version "1.4.2-beta"
  sha256 "68ac34f86fff0683455cadc0c62359730c3dc60c65d2461ea0c4ddd926ee2f04"

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
