cask "lumencite" do
  version "0.7.0"
  sha256 "17cae7d5702d18844acbf4e7d64003e0e1c72ad4dcaff213b283122254e2f503"

  url "https://github.com/marmot1123/LumenCite/releases/download/v#{version}/LumenCite_#{version}_universal.dmg"
  name "LumenCite"
  desc "Desktop reference manager for researchers (PDF, BibTeX, LLM, MCP)"
  homepage "https://github.com/marmot1123/LumenCite"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "LumenCite.app"

  zap trash: [
    "~/Library/Application Support/com.lumencite.app",
    "~/Library/Caches/com.lumencite.app",
    "~/Library/HTTPStorages/com.lumencite.app",
    "~/Library/Preferences/com.lumencite.app.plist",
    "~/Library/Saved Application State/com.lumencite.app.savedState",
    "~/Library/WebKit/com.lumencite.app",
  ]
end
