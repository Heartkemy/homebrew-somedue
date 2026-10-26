cask "somedue" do
  version "0.1.1-alpha.1"

  on_arm do
    url "https://github.com/Heartkemy/somedue/releases/download/v0.1.1-alpha.1/Somedue-0.1.1-alpha.1-arm64.dmg"
    sha256 "e1678e61f45a404eaa77a76a9e4d31be0356300480ff9e6eac54f0dee54b71bf"
  end

  on_intel do
    url "https://github.com/Heartkemy/somedue/releases/download/v0.1.1-alpha.1/Somedue-0.1.1-alpha.1-x86_64.dmg"
    sha256 "c7ad8d968fd52c291c2b93ba832cf41cc024eb4208d3f42208e6fcb111388f3c"
  end

  name "Somedue"
  desc "Native macOS task manager"
  homepage "https://github.com/Heartkemy/somedue"

  depends_on macos: ">= :ventura"

  app "Somedue.app"

  caveats <<~EOS
    Somedue requires macOS 13 or later.
    Homebrew keeps quarantine enabled so macOS can assess the app normally.
    This build does not support saving Things Cloud credentials.
    Things Cloud connections are disabled in this local-only preview.
    This preview is ad-hoc signed and not notarized. macOS may block opening it.
    See the repository's installation instructions before choosing to open it.
  EOS
end
