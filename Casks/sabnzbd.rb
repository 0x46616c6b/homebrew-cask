cask "sabnzbd" do
  version "3.1.1"
  sha256 "1ebfd4e8359155c646238e5dcf2ee0f2a1efbbc8fab9b6e1af93b9584f61c02d"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg",
      verified: "github.com/sabnzbd/sabnzbd/"
  appcast "https://github.com/sabnzbd/sabnzbd/releases.atom"
  name "SABnzbd"
  homepage "https://sabnzbd.org/"

  depends_on macos: ">= :yosemite"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
