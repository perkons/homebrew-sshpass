class Sshpass < Formula
  desc "Tool for non-interactivly performing password authentication with SSH"
  homepage "https://sourceforge.net/projects/sshpass/"
  url "https://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz"
  sha256 "71746e5e057ffe9b00b44ac40453bf47091930cba96bbea8dc48717dedc49fb7"
  license "GPL-2.0-or-later"

    def install
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
  
    test do
      system "sshpass"
    end
  end
