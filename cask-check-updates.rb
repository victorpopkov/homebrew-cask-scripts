class CaskCheckUpdates < Formula
  desc "Script to find outdated casks and their latest versions"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.4.8"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    bin.install "bin/cask-check-updates"
  end

  test do
    system "#{bin}/cask-check-updates", "--version"
  end
end
