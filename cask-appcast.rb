class CaskAppcast < Formula
  desc "Get the latest available version, checkpoint and download URL(s) from appcast"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.3.11"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    prefix.install "lib"
    prefix.install "test"
    bin.install "bin/cask-appcast"
  end

  test do
    system "#{prefix}/test/bats/bin/bats", "#{prefix}/test/cask-appcast.bats"
  end
end
