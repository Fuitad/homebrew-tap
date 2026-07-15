cask "cimon" do
  version "0.1.12"
  sha256 "3b10ef897e3bd0c61b335c42c5db574463844ed500fd200cf3e73c858bf7e9ba"

  url "https://github.com/Fuitad/cimon/releases/download/v#{version}/CIMon_#{version}_universal.dmg"
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
