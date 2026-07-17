cask "dev" do
  version "0.8.9"
  sha256 "c5a196a722f73e14c47d97310bf25c89806fe5682baa59c9e95f74647f25fbb1"

  url "https://releases.agentastic.ai/agentasticdev/Agentastic.dev-#{version}.dmg",
      verified: "releases.agentastic.ai/agentasticdev/"
  name "Agentastic.dev"
  desc "Native macOS code editor"
  homepage "https://www.agentastic.dev"

  depends_on macos: :sonoma

  app "Agentastic.dev.app"

  zap trash: [
    "~/Library/Application Support/dev.agentastic.Agentastic",
    "~/Library/Caches/dev.agentastic.Agentastic",
    "~/Library/HTTPStorages/dev.agentastic.Agentastic",
    "~/Library/Preferences/dev.agentastic.Agentastic.plist",
    "~/Library/Saved Application State/dev.agentastic.Agentastic.savedState",
  ]
end
