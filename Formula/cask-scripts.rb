class CaskScripts < Formula
  desc "Collection of small scripts to help maintain the Homebrew-Cask project"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.1.5"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{prefix}/test/bats/bin/bats", "#{prefix}/test/"
  end
end
