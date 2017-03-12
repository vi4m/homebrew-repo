class Calendarsync < Formula
  desc "Small tool to synchronise OSX calendars. It enables Apple Watch calendar sync, from unsupported calendars."
  url "https://github.com/vi4m/calendarsync/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "e7cfdc6fc6ec357b55ecaaf3a137ca34dd3fc6c6a253e3e5775e876cca0833f6" 

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/calendarsync calendarsync"
    bin.install "calendarsync"
  end
end
