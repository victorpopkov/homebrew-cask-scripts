class CaskAppcast < Formula
  desc "Script to get the latest available version from appcast URL"
  homepage "https://github.com/victorpopkov/cask-scripts"
  url "https://github.com/victorpopkov/cask-scripts.git"
  version "0.3.0"

  depends_on "xmlstarlet"
  depends_on "jq"
  depends_on "hr" => :recommended

  def install
    bin.install "cask-appcast"
  end

  test do
    system "#{bin}/cask-appcast", "--version"
  end
end
