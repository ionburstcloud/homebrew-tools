class IonfsDevelop < Formula
    version = "0.4.0-develop.1"
  
    desc "IonFS CLI (develop branch)"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "a24012274dc5b3dc399383143d4862c595c36712646baa713097fdcddcfc5b44"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
        sha256 "d7b8e31a9634098529b0f886ca6d73598c2e3e9cd2ed1ca3a979262a7cc987ad"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "d3e17402c7cabc8870f774b21c6293c4950e0e08e542c9d07dc8b44bc8229ea4"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux.tar.bz2"
        sha256 "95ead7c471d9d6bdc5bf1b603613109b2ff194f6d5441f930046d08c3297f362"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  