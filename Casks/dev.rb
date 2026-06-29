cask "dev" do
  version "0.8.4"
  sha256 "ddf6b7f12ecb46c3201ffdef875402431bce7dd4f3e5277c62e9f860050720f9"

  url "https://releases.agentastic.ai/agentasticdev/Agentastic.dev-#{version}.dmg"
  name "Agentastic.dev"
  desc "Native macOS code editor"
  homepage "https://www.agentastic.dev"

  depends_on macos: ">= :sonoma"

  app "Agentastic.dev.app"

  zap trash: [
    "~/Library/Application Support/dev.agentastic.Agentastic",
    "~/Library/Caches/dev.agentastic.Agentastic",
    "~/Library/HTTPStorages/dev.agentastic.Agentastic",
    "~/Library/Preferences/dev.agentastic.Agentastic.plist",
    "~/Library/Saved Application State/dev.agentastic.Agentastic.savedState",
  ]
end
