cask "lumencite" do
  version "0.6.0"
  sha256 "699d4f664d2029ad992012909a061f3c89c38c47411eee9983e3b7cc9959484f"

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
