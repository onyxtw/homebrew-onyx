class OnyxAccelerator < Formula
  desc "ONYX‑ACCELERATOR — 家庭主權級網路加速器"
  homepage "https://github.com/onyxtw/homebrew-onyx"
  url "https://github.com/onyxtw/homebrew-onyx/releases/download/v1.0.0/ONYX-ACCELERATOR-1.0.0.tar.gz"
  sha256 "b2aba7219a193bdccfd3ff616ac21b0add19a536b110e9675dae710ce2508b6f"
  license "MIT"

  depends_on "aria2"
  depends_on "cloudflared"

  def install
    bin.install "onyx-accel"
    etc.install "onyx-accel.conf"
    (var/"log/onyx-accel").mkpath
  end

  test do
    system "#{bin}/onyx-accel", "status"
  end
end

