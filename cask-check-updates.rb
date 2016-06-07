class CaskCheckUpdates < Formula
  desc "Scan casks with appcasts for outdated ones and get the latest available version(s)"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.5.0"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    prefix.install "lib"
    prefix.install "test"
    bin.install "bin/cask-check-updates"
  end

  test do
    system "#{prefix}/test/bats/bin/bats", "#{prefix}/test/cask-check-updates.bats"
  end
end
