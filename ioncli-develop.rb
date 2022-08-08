class IoncliDevelop < Formula
  version = "1.2.0-develop.6"

  desc "ioncli - CLI for Ionburst Cloud"
  homepage "https://github.com/ionburstcloud/ionburst-sdk-go"
  url "https://github.com/ionburstcloud/ionburst-sdk-go"
  version version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-arm64.zip"
      sha256 "731a3af66154f4398b78b0ee0e6d35ef34c2e7f84e04b482665f06e2aab37ae3"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-amd64.zip"
      sha256 "5b81622f3544f01f490b31fa7d56bda14c1f9d1d3c3fcbde04502e3e5e04ae94"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux-arm64.tar.bz2"
      sha256 "138c774fb91dfb4f1d0dd6b41d84ac7b0eb25ae4738d2011ff750212231e9cf5"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux64.tar.bz2"
      sha256 "138c774fb91dfb4f1d0dd6b41d84ac7b0eb25ae4738d2011ff750212231e9cf5"
    end
  end

  def install
    bin.install Dir.glob("ioncli").first => "ioncli"
  end

  test do
    system bin/"ioncli"
  end
end  
