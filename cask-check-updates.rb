class CaskCheckUpdates < Formula
  desc "Script to find outdated casks and their latest versions"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.2.7"

  depends_on "xmlstarlet"
  depends_on "jq"
  depends_on "hr" => :recommended

  def install
    bin.install "cask-check-updates"
  end

  test do
    system "cask-check-updates"
  end
end
