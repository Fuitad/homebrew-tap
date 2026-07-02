cask "cimon" do
  version "0.1.7"
  sha256 "c08ab4759869c52e3f27cf71a0f2e9f89bfebeb79a9a5e5abb321761289233b0"

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
