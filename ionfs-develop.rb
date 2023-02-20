class IonfsDevelop < Formula
    version = "0.3.1-develop.1"
  
    desc "IonFS CLI (develop branch)"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "aee85d4c287681de010d1685e527a230ba901b9c00bf549206ea629645123e08"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
        sha256 "fca2f5657ee775cfddf08829e0df2954600393bda50cee51c1929fb3b94cc2e9"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "cafa5f252969fd0353f007a63260ed491d2070a58fc50aff29998ce1334e7b3d"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux.tar.bz2"
        sha256 "501ca17d7874fd630b7970dbe077871557d109f978c30d81b70634f20431f5c5"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  