class CaskCheckUpdates < Formula
  desc "Script to find outdated casks and their latest versions"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.4.8"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    prefix.install "libexec"
    prefix.install "test"
    bin.install "bin/cask-check-updates"
  end

  test do
    system "#{prefix}/test/bats/bin/bats", "#{prefix}/test/cask-check-updates.bats"
  end
end
