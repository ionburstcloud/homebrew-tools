class IonfsDevelop < Formula
    version = "0.3.0"
  
    desc "IonFS CLI"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "059265d60540f22c24691913bab3633bbdbbf177df9fa09560407b006f5bedd3"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac.tar.bz2"
        sha256 "94ada0e1c83fc8da9193174a97e316e1265fb6b20336a494c69ed1dc0be26bd3"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "d0dda474315886c365af2142a031aae8096ecf718c7902e706e5c6749f9e8aac"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-linux.tar.bz2"
        sha256 "782fd24c972af2f8a5992eeb504fb2e264fb2af84f98a9f98f233365e0a3c848"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  