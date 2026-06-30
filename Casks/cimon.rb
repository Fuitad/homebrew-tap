cask "cimon" do
  version "0.1.5"
  sha256 "69cf099dc137c762c0d5a5c8dcacc335abead9bacf742c4bcd77a7c802d8893b"

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
