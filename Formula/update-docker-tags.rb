# This file was generated by GoReleaser. DO NOT EDIT.
class UpdateDockerTags < Formula
  desc "CLI to update Docker tag image versions"
  homepage "https://github.com/slimsag/update-docker-tags"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/slimsag/update-docker-tags/releases/download/v0.7.0/update-docker-tags_0.7.0_Darwin_x86_64.tar.gz"
    sha256 "763e9edabbcc0c894fda47edca49ceedd005fc85c6a76344b8b43a9023ad57a2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/slimsag/update-docker-tags/releases/download/v0.7.0/update-docker-tags_0.7.0_Linux_x86_64.tar.gz"
      sha256 "3256440b4fa668f34f043429311409002a345085a685fe47d845132494900173"
    end
  end
  
  depends_on "go"

  def install
    bin.install "update-docker-tags"
  end

  test do
    system "#{bin}/update-docker-tags --help"
  end
end
