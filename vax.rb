class Vax < Formula
  desc "Tool for vagrant-style development workflow on pure Docker"
  homepage ""
  url "https://github.com/vi4m/vax/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "85361e30e1f5bb712e5c8f9756740d72afa3303c37664dc2e5bdea1b0d893d48"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/vax vax"
    bin.install "vax"
  end
end
