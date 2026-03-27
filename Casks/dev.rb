cask "dev" do
  version "0.6.4"
  sha256 "c10bd91a208a9d6e61d0fcbd3bd5ac38b89f23e2d5dd1a085dbe7310318d4501"

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
