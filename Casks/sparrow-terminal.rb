cask "sparrow-terminal" do
  version "1.4.3-beta"
  sha256 "ecab569abf4494ab873d837f63a80efa4831a128fabf3aae8320a1e34f962e38"

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
