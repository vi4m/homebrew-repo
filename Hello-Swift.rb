class HelloSwift < Formula
  desc "hello world in swift"
  homepage ""
  url "https://github.com/vi4m/hello-swift/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "8669ea27154bd676760286b9a11c6258e0943163d043dee1f087e934d5496217"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/hello-swift hello-swift"
    bin.install "hello-swift"
  end
end