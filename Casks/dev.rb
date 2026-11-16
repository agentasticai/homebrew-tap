cask "dev" do
  version "0.18.0"
  sha256 "797b67baefdde4aa154077183738269a6f93358c68bbff5d2707d32e0928aa09"

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
