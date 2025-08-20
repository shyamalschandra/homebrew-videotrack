# VideoTrack Homebrew Tap

This repository contains the Homebrew tap for VideoTrack, a professional video processing tool with advanced features including filters, overlays, and anonymization capabilities.

## Installation

To install VideoTrack using Homebrew:

```bash
# Add the tap
brew tap shyamalschandra/videotrack

# Install VideoTrack
brew install videotrack
```

## Features

### Command Line Interface
- **Video Processing**: Apply filters, overlays, and anonymization
- **Video Playback**: Quick video playback from command line
- **Video Information**: Get detailed video metadata

### GUI Application
- **Modern Interface**: SwiftUI-based professional interface
- **Real-time Preview**: See changes before processing
- **Batch Processing**: Process multiple videos efficiently
- **Advanced Controls**: Fine-tune all processing parameters

### Supported Formats
- **Input**: MP4, MOV, AVI, MKV, and more
- **Output**: MP4 (H.264)

### Processing Features
- **Filters**: Brightness, contrast, saturation, blur, sharpen, sepia, black & white, vintage
- **Overlays**: Date/time stamps, location information, custom text, images
- **Anonymization**: Pixelation with configurable regions and pixel sizes
- **Quality Control**: Low, medium, and high quality presets

## Usage

### Command Line

```bash
# Process a video with filters
videotrack process input.mp4 --brightness 0.2 --contrast 1.5 --saturation 0.8

# Add date overlay
videotrack process input.mp4 --add-date --date-format "MM/dd/yyyy"

# Add location overlay
videotrack process input.mp4 --add-location --latitude 37.7749 --longitude -122.4194

# Apply anonymization
videotrack process input.mp4 --anonymize --pixel-size 25

# Play a video
videotrack play output.mp4

# Get video information
videotrack info input.mp4
```

### GUI Application

1. Launch VideoTrack.app from Applications
2. Click "Open Video" to select a video file
3. Adjust filters, overlays, and anonymization settings
4. Click "Process Video" to start processing
5. Save the processed video

## Requirements

- macOS 13.0 or later
- Swift 5.9 or later (for building from source)

## License

This is proprietary software. All rights reserved.

## Support

For support and feature requests, please visit: https://github.com/shyamalschandra/videotrack

## Development

To build from source:

```bash
git clone https://github.com/shyamalschandra/videotrack.git
cd videotrack
swift build --configuration release
```

## Version History

- **v1.0.0**: Initial release with core video processing features
