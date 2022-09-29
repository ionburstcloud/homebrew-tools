class IoncliDevelop < Formula
    version = "1.2.0"
  
    desc "ioncli - CLI for Ionburst Cloud"
    homepage "https://github.com/ionburstcloud/ionburst-sdk-go"
    url "https://github.com/ionburstcloud/ionburst-sdk-go"
    license "Apache-2.0"
    version version

    conflicts_with "ioncli-develop"
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ioncli.s3.fr-par.scw.cloud/ioncli-#{version}-darwin-arm64.zip"
        sha256 "b0a65f4672e5903e1dee7f9f2f3950c2eb15a9c3e841f88ae0dd230daeeeae88"
      else
        url "https://ioncli.s3.fr-par.scw.cloud/ioncli-#{version}-darwin-amd64.zip"
        sha256 "813a21a88a8c53eac6967ffb9a267cde967757f1b7ad01f0461e42784ddba4eb"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ioncli.s3.fr-par.scw.cloud/ioncli-#{version}-linux-arm64.tar.bz2"
        sha256 "930e368f3e005f737b669b62e31b15659b5533dfe850bb76830efe925b9601d8"
      else
        url "https://ioncli.s3.fr-par.scw.cloud/ioncli-#{version}-linux64.tar.bz2"
        sha256 "fcd22edc31c4e00cb307e0af442e38ff7de26cb1b1389857f354051d75964c99"
      end
    end
  
    def install
      bin.install Dir.glob("ioncli").first => "ioncli"
    end
  
    test do
      system bin/"ioncli"
    end
  end  
  