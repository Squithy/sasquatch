class Sasquatch < Formula
  desc "Tool to extract non-standard SquashFS images"
  homepage "https://github.com/devttys0/sasquatch"
  url "https://github.com/squithy/sasquatch.git", revision: "9b922beb6625416f95670f25a5b31b75d8fca09b"
  sha256 "eddb045500dbc0e957624cc6519d84bd145af3bc378c09b4f50171da63c77ef2"
  version "4.3"
  license "GPL-2.0-or-later"

  depends_on "xz"      # for liblzma
  depends_on "lzo"     # for liblzo2
  depends_on "zlib"
  depends_on "wget"

  def install
    system "./build.sh"
    bin.install "squashfs4.3/squashfs-tools/sasquatch"
  end

  test do
    system "#{bin}/sasquatch", "-h"
  end
end
