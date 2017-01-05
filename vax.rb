class Vax < Formula
  desc "Tool for vagrant-style development workflow on pure Docker"
  homepage ""
  url "https://github.com/vi4m/vax/archive/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "8f27ab7f5b7ae238f8e86a3c7db7b1f53fb3bf500d0dcd6c52235839e8af3235"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/vax vax"
    bin.install "vax"
  end
end
