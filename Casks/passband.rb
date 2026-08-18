cask "passband" do
  version "0.0.3"
  sha256 "6a4df79cf9619f031146b1a2c2d8ca8f685b7d83c7c6ceedf7d2047a35fc65b1"

  url "https://passband.app/download/Passband-#{version}.zip"
  name "Passband"
  desc "Mac client for squelchd, the self-hosted email triage daemon"
  homepage "https://passband.app/"

  livecheck do
    url "https://passband.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Passband.app"

  zap trash: [
    "~/Library/Application Support/Passband",
    "~/Library/Caches/app.passband.client",
    "~/Library/Preferences/app.passband.client.plist",
    "~/Library/Saved Application State/app.passband.client.savedState",
  ]
end
