require 'formula'

class Jags < Formula
  homepage 'http://mcmc-jags.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/mcmc-jags/JAGS/3.x/Source/JAGS-3.3.0.tar.gz'
  sha1 '79a50baaf1e2b2e7673d477e830963b49aad2a6c'

  depends_on :fortran

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
