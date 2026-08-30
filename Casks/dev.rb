cask "dev" do
  version "0.9.5"
  sha256 "bf81ddf3f0f54d441823349fbf0d28c4d8ba0dd1d69b30a9da391d0d6d593d12"

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
