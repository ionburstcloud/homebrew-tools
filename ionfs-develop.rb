class IonfsDevelop < Formula
    version = "0.4.0-develop.2"
  
    desc "IonFS CLI (develop branch)"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "add8b6e46b1f1d25d71c18da3928e96920d905428664f4b0fdec774ed66169ae"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
        sha256 "26e020514b8bc8e340cc91586f3a0a19a765158834cd6bed9c10296326cbaeb1"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "644d217614bedb1da93341511bf2de4956e383ea46e4100c709690e4c99712d3"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-linux.tar.bz2"
        sha256 "730fe304b241c6e860901b4a33d7db4e94663ae0adba1f256a1817f75c73165b"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  