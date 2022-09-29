class IoncliDevelop < Formula
  version = "1.2.0-develop.6"

  desc "ioncli - CLI for Ionburst Cloud"
  homepage "https://github.com/ionburstcloud/ionburst-sdk-go"
  url "https://github.com/ionburstcloud/ionburst-sdk-go"
  license "Apache-2.0"
  version version

  conflicts_with "ioncli"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-arm64.zip"
      sha256 "4c78877346550bd3246528a9a9095069c06ebd57cf723fb5392787d75059a0f6"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-amd64.zip"
      sha256 "c38d894785ba8cc2f443929ef7463c8c397d8238ff14ce27d0c6c5664cb94b99"
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
