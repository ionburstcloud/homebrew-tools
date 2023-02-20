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
      sha256 "862dada6afe5fd5cab9199e215e134bcd498153a50dd567fdce3e730b894e0ed"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-amd64.zip"
      sha256 "1b43c6bd10c4f9f51d851bd23f7b612b3123f7371792ff3ad1763a2509a80a6b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux-arm64.tar.bz2"
      sha256 "08c807137c4f9327407f0f23c8a582297b6084ad4dd55286649596a85b45d594"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux64.tar.bz2"
      sha256 "21c474afb34dbeb80de18f6f17c409ead526dd44c5a0ad23bae862fd3e359693"
    end
  end

  def install
    bin.install Dir.glob("ioncli").first => "ioncli"
  end

  test do
    system bin/"ioncli"
  end
end  
