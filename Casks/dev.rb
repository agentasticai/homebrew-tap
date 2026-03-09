cask "dev" do
  version "0.6.0"
  sha256 "6842e7ea8c96b4bf8e044ca150e21dc3a6a520fa65f5980e9771f2569d968037"

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
