class IonCLI < Formula
  version = "1.2.0-develop.3"

  desc "ioncli - CLI for Ionburst Cloud"
  homepage "https://github.com/ionburstcloud/ionburst-sdk-go"
  url "https://github.com/ionburstcloud/ionburst-sdk-go"
  version version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-arm64.zip"
      sha256 "a1740b320c210c4442918bdc277ad517de320a313d60b15ad2003779d15e394b"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-darwin-amd64.zip"
      sha256 "c45952dc8f61a9d5d7809a7f9394657ba7457fa472cc3c7b534afc8bea3a2df3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux-arm64.tar.bz2"
      sha256 "dae2fe975907cc1c25c0222a15e19ebc98ac1631128c4ff68ddd29eaeb9898e3"
    else
      url "https://ioncli.s3.fr-par.scw.cloud/develop/ioncli-#{version}-linux64.tar.bz2"
      sha256 "e98cfc69abdf6b86c5abbfc07b58c778dff19b9c535807d5f59a4bf6c7092ea7"
    end
  end

  def install
    bin.install Dir.glob("ioncli").first => "ioncli"
  end

  test do
    system bin/"ioncli"
  end
end  
