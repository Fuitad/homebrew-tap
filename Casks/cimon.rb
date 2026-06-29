cask "cimon" do
  version "0.1.4"
  sha256 "88ae38f00e789a414f360064ea32d2f66fcddaf78d3e6cb833862c9602875f43"

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
