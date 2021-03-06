class Wwwoffle < Formula
  desc "Better browsing for computers with intermittent connections"
  homepage "https://www.gedanken.org.uk/software/wwwoffle/"
  url "https://www.gedanken.org.uk/software/wwwoffle/download/wwwoffle-2.9i.tgz"
  sha256 "e6341a4ec2631dc22fd5209c7e5ffe628a5832ad191d444c56aebc3837eed2ae"

  bottle do
    cellar :any_skip_relocation
    sha256 "ba1e8866f1b947320d2a57c013c6b610fbfa1225a178e2e80ab7ef237b27d8cf" => :high_sierra
    sha256 "9baa461cf3b9fe506e253b12c2077eadcc31e9e5f287fc3dc1104b3a7dd6a06a" => :sierra
    sha256 "381de5ed514c914b5d50abd3df4779e31791da9ff6b82a789f773982056d3263" => :el_capitan
    sha256 "8b896cd540dc1f9e24f3e927c42791c76738563650139140c3fd7d53653d016b" => :yosemite
    sha256 "173905dadf22b698a67e932c7ab6568ffbf6678763e34a0db97cb0499e327254" => :mavericks
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
