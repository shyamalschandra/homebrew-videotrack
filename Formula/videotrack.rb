class Videotrack < Formula
  desc "Professional video processing tool with filters, overlays, and anonymization"
  homepage "https://github.com/shyamalschandra/videotrack"
  version "1.0.1"
  
  # For proprietary software, you would typically host the binary on your own server
  # or use GitHub releases with private access
  url "https://github.com/shyamalschandra/videotrack/releases/download/v1.0.1/videotrack-1.0.0.tar.gz"
  sha256 "ff357b199eb8b4f1be9b80e011b73ce1e417b89618a1209bc4ea40925351aa25" # Replace with actual SHA256 hash after building
  
  depends_on :macos
  
  def install
    # Install CLI binary
    bin.install "videotrack"
    
    # Install GUI app
    prefix.install "VideoTrack.app"
    
    # Create Applications symlink
    (prefix/"Applications").mkdir
    ln_s prefix/"VideoTrack.app", prefix/"Applications/VideoTrack.app"
  end
  
  def caveats
    <<~EOS
      VideoTrack has been installed!
      
      CLI Usage:
        videotrack process input.mp4 --brightness 0.2 --contrast 1.5
        videotrack play output.mp4
        videotrack info input.mp4
      
      GUI Usage:
        Open VideoTrack.app from Applications folder
        Or run: open #{prefix}/Applications/VideoTrack.app
      
      For more information, visit: #{homepage}
    EOS
  end
  
  test do
    system "#{bin}/videotrack", "--version"
  end
end
