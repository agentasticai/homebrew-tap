cask "dev" do
  version "0.8.5"
  sha256 "7b924dbbde16df069f9b1085fdccf82e0321aaeaad553c2f617d22ee56699fd9"

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
