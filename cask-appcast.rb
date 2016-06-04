class CaskAppcast < Formula
  desc "Script to get the latest available version from appcast URL"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.3.7"

  depends_on "xmlstarlet"
  depends_on "jq"

  def install
    prefix.install "libexec"
    prefix.install "test"
    bin.install "bin/cask-appcast"
  end

  test do
    system "#{prefix}/test/bats/bin/bats", "#{prefix}/test/cask-appcast.bats"
  end
end
