class IonfsDevelop < Formula
    version = "0.4.0-develop.3"
  
    desc "IonFS CLI (develop branch)"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "bbf18c6071b7520893f264669b3b8eec7001da71b0d618860f4bbdf53ed03893"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
        sha256 "df9be3ce9b1727f0a84b0bdb1ec12372ac4536e76b6afa921b661f79e553cc93"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "86c7f24ddb55b70a891e822d235c18b8c4583979e9c60d1ffe6384de34a94424"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux.tar.bz2"
        sha256 "c382ffe1a3c25f88f857912ebec557e5314abe5617e63e2b1e4c488073c5529a"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  