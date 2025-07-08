import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/features/videos/domain/entities/video_entity.dart';
import 'package:learning_management/features/videos/domain/repository/video_repository.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_event.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_state.dart';

@freezed
class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository repository;

  VideoBloc(this.repository) : super(const VideoState.initial()) {
    on<FetchAllVideos>((event, emit) async {
      emit(const VideoState.loading());

      final response = await repository.fetchVideos();

      response.fold((failure) => emit(VideoState.error(failure: failure)), (
        moduleList,
      ) {
        final videoList = moduleList
            .map(
              (modules) => VideoEntity(
                id: modules.id,
                title: modules.title,
                description: modules.description,
                videoType: modules.videoType,
                videoUrl: modules.videoUrl
              ),
            )
            .toList();
        emit(VideoState.loaded(videos:videoList));
      });
    });
  }
}
