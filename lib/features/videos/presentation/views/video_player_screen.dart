import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:learning_management/features/videos/data/model/video_model.dart';

class VideoPlayerScreen extends StatelessWidget {
  final String videoUrl;
  final VideoType videoType;

  const VideoPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.videoType,
  });

  Widget _buildVideoContainer({required Widget child}) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // 🔽 Reduced radius
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: AspectRatio(aspectRatio: 16 / 9, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (videoType == VideoType.YOU_TUBE) {
      final videoId = YoutubePlayer.convertUrlToId(videoUrl);

      if (videoId == null || videoId.isEmpty) {
        return Scaffold(
          appBar: AppBar(title: const Text("YouTube Player")),
          body: const Center(child: Text("Invalid YouTube video URL")),
        );
      }

      final controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
      );

      return Scaffold(
        appBar: AppBar(title: const Text("YouTube Player")),
        body: _buildVideoContainer(
          child: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
          ),
        ),
      );
    } else {
      final controller = WebViewController()
        ..loadRequest(Uri.parse(videoUrl))
        ..setJavaScriptMode(JavaScriptMode.unrestricted);

      return Scaffold(
        appBar: AppBar(title: const Text("Vimeo Player")),
        body: _buildVideoContainer(
          child: WebViewWidget(controller: controller),
        ),
      );
    }
  }
}
