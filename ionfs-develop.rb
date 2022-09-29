class IonfsDevelop < Formula
    version = "0.3.0-develop.5"
  
    desc "IonFS CLI (develop branch)"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "c63d725f7ee804b3d1fc6b6c9316ca752319873cd75fb5f95c5207514edfc639"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
        sha256 "f6ac8494bd06c585abe1bc1743cc701eb70212d9430ed7f1328f2dba8a8f194a"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "8aa9a022b8be4640ab42b69520d18f1df763275b65a944ba15c615e4549e83d5"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux.tar.bz2"
        sha256 "b89f56e9f05626da4465146812d52787a8880a77ee72760dfb089fd96e0cd25a"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  