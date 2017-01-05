class Vax < Formula
  desc "Tool for vagrant-style development workflow on pure Docker"
  homepage ""
  url "https://github.com/vi4m/vax/archive/0.1.3.tar.gz"
  version "0.1.3"
  sha256 "7b8080a0fc10cc0c27c9b833d150effe08826604f219f729d1e2a38d63595566"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/vax vax"
    bin.install "vax"
  end
end
