class Ionfs < Formula
    version = "0.3.1"
  
    desc "IonFS CLI"
    homepage "https://github.com/ionburstcloud/ionfs"
    url "https://github.com/ionburstcloud/ionfs"
    license "Apache-2.0"
    version version
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac-arm64.tar.bz2"
        sha256 "658e80ab949bb4f66b8fae88af537a4f86998ba0dfc48c6885834bd71d7d58ac"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac.tar.bz2"
        sha256 "3ecd713389fb6d9a23d248a3f55ba706c302ef5b1bc72591cccd22b8f22d94e3"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-linux-arm64.tar.bz2"
        sha256 "48bcf217dc3aa40475413f05272d8db47f5633077d1cf8b5be73d3bc2eb1e06d"
      else
        url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-linux.tar.bz2"
        sha256 "51a1505537aa9c1c17daac8c856a22039fefddbaf60c8c6e5fbfe34ca092bfb1"
      end
    end
  
    def install
      bin.install Dir.glob("ionfs").first => "ionfs"
    end
  
    test do
      system bin/"ionfs"
    end
  end  
  