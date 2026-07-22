cask "lumencite" do
  version "0.8.0"
  sha256 "28b625da5b76d02c962bda92334f8edcfaec1ba2ff8be350745d39e590119a1e"

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
