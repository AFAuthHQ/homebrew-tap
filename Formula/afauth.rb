class Afauth < Formula
  desc "Agent-First Auth — reference CLI"
  homepage "https://afauth.org"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.2.0/afauth_0.2.0_darwin_arm64.tar.gz"
      sha256 "7ab1a84803be66c19a1a67d08c671ed79a29581712310801ce69bba535a3b550"
    end
    on_intel do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.2.0/afauth_0.2.0_darwin_amd64.tar.gz"
      sha256 "f0398ac3f2f1ad43a864b37cad98cc0474fe883834020e45d497a97775155bde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.2.0/afauth_0.2.0_linux_arm64.tar.gz"
      sha256 "eec18897f7a71491d78cb66fbee3714fceae8d29aad881c4ed3c43e3d739d899"
    end
    on_intel do
      url "https://github.com/AFAuthHQ/cli/releases/download/v0.2.0/afauth_0.2.0_linux_amd64.tar.gz"
      sha256 "701992d4f5b3bc52b631e2af1b0c6b56be41714a9ab51fd1bbf122e2d6813373"
    end
  end

  def install
    bin.install "afauth"
  end

  test do
    assert_match "afauth version", shell_output("#{bin}/afauth --version")
  end
end
