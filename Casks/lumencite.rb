cask "lumencite" do
  version "1.0.0"
  sha256 "e9a66c10130a8d5ba753028ce41910b4cd370691fd4e2a7f01e707d1ac1c5c18"

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
