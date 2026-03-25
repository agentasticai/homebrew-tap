cask "dev" do
  version "0.6.3"
  sha256 "0e98491f5401a51ca44b0f1eaa91403ae6c5dfa791b500836e9b14df486742a1"

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
