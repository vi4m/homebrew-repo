class Calendarsync < Formula
  desc "Small tool to synchronise OSX calendars. It enables Apple Watch calendar sync, from unsupported calendars."
  url "https://github.com/vi4m/calendarsync/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "71a7410b2544f87fb849a5afa87569c209b35df48836e7a0adc5d34eb0ccb7f0" 

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/calendarsync calendarsync"
    bin.install "calendarsync"
  end
end
