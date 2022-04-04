class Namegen < Formula
  version = "0.1.0"

  desc "Name generator based on Scottish inventors, scientists and engineers"
  homepage "https://github.com/ionburstcloud/namegen"
  url "https://github.com/ionburstcloud/namegen"
  version version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://namegen.s3.fr-par.scw.cloud/namegen-#{version}-darwin-arm64.zip"
      sha256 "13b88811ab3e94035fcf3eda93e9fab26ab2ea0b70b1ef25a744aa247082a3a2"
    else
      url "https://namegen.s3.fr-par.scw.cloud/namegen-#{version}-darwin-amd64.zip"
      sha256 "52c7842b95f2c7f2d07978ae01ffa419bf222d2f8ac8e847f161c84bba1a2225"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://namegen.s3.fr-par.scw.cloud/namegen-#{version}-linux-arm64.zip"
      sha256 "985e273d46dfffa0e80cc6564a70b1b18af33d18b892bdaec938f124ce8af9ce"
    else
      url "https://namegen.s3.fr-par.scw.cloud/namegen-#{version}-linux-amd64.zip}"
      sha256 "865160b7ec71ac14f0b4e916403b6825e0473fa1bfab863dfb02172f7951f8f3"
    end
  end

  def install
    bin.install Dir.glob("namegen").first => "namegen"
  end

  test do
    system bin/"namegen"
  end
end  