class Vax < Formula
  desc "Tool for vagrant-style development workflow on pure Docker"
  homepage ""
  url "https://github.com/vi4m/vax/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1587e3c81d59eb522e8047b4d2c1407319c503de0365c5f42b9a7e61cd6eb8aa"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/vax vax"
    bin.install "vax"
  end
end
