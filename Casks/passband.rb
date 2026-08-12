cask "passband" do
  version "0.0.2"
  sha256 "432e8057a4d883a616d52ccadef00cae790b3f456eccf44b9559f581e9e573c8"

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
