class Afauth < Formula
  desc "Agent-First Auth — reference CLI"
  homepage "https://afauth.org"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.1.0/afauth_0.1.0_darwin_arm64.tar.gz"
      sha256 "4c8d4e400395b02cb678a6fc8f15bf00a447c86e432bfd2d9ccf3ea81d849549"
    end
    on_intel do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.1.0/afauth_0.1.0_darwin_amd64.tar.gz"
      sha256 "ebd0774583c64afb183c731fd0f0e453c9a63ea6b935d55a39cdaabcca534994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.1.0/afauth_0.1.0_linux_arm64.tar.gz"
      sha256 "213384500b327689f5ff37486b217b770b3c4f5bb5348f3db8e9046d8a2ba351"
    end
    on_intel do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.1.0/afauth_0.1.0_linux_amd64.tar.gz"
      sha256 "c5f386b2d8fe62e6fcd4f0e33579ded6f1ab2664fde9f2d522b7fd33650abdfe"
    end
  end

  def install
    bin.install "afauth"
  end

  test do
    assert_match "afauth version", shell_output("#{bin}/afauth --version")
  end
end
