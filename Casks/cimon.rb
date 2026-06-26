cask "cimon" do
  version "0.1.0"
  sha256 "e39e3000c1c473e0cef2ad3438eafef4336ad6a7e790e446f951fd7394b724c3"

  url "https://github.com/Fuitad/cimon/releases/download/v#{version}/CIMon_#{version}_universal.dmg",
      verified: "github.com/Fuitad/cimon/"
  name "CIMon"
  desc "Menu bar monitor for GitLab and GitHub CI pipelines"
  homepage "https://github.com/Fuitad/cimon"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "CIMon.app"

  zap trash: [
    "~/Library/Application Support/io.github.fuitad.cimon",
    "~/Library/Saved Application State/io.github.fuitad.cimon.savedState",
  ]
end
