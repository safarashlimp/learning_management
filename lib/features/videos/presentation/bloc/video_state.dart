import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/videos/domain/entities/video_entity.dart';
part 'video_state.freezed.dart';
@freezed
 class VideoState with _$VideoState   {
    const factory VideoState.initial() = Initial;
  const factory VideoState.loading() = loading;
   const factory VideoState.error({required Failure failure})=Error;
 const factory VideoState.loaded({required List<VideoEntity> videos})=Loaded;
 }