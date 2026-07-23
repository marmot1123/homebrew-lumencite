cask "lumencite" do
  version "0.9.0"
  sha256 "e7ca8b7e3d57c411d330bb1c2ab38a2d20bb5fddd7730bd4f481cfa45156991e"

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
