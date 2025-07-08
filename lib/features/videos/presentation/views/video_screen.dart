import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_bloc.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_event.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_state.dart';
import 'package:learning_management/features/videos/presentation/views/video_player_screen.dart';

class VideoScreen extends StatelessWidget {
  final int moduleId;
  final String moduleTitle;
  final String moduleDiscription;

  const VideoScreen({
    required this.moduleId,
    required this.moduleTitle,
    required this.moduleDiscription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(moduleTitle)),
      body: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              context.read<VideoBloc>().add(const VideoEvent.fetchVideos());
              return const Center(child: CircularProgressIndicator());
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (failure) => Center(child: Text(failure.message)),
            loaded: (videos) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Videos",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: videos.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final video = videos[index];

                      return Card(
                        margin: EdgeInsets.zero,
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 8,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => VideoPlayerScreen(
                                  videoUrl: video.videoUrl,
                                  videoType: video.videoType,
                                ),
                              ),
                            );
                          },
                          leading: const Icon(
                            Icons.play_circle_fill,
                            size: 28,
                            color: Colors.black,
                          ),
                          title: Text(
                            video.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              video.description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
