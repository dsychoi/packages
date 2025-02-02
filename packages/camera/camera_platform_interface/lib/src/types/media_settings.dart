// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'resolution_preset.dart';

/// Recording media settings.
///
/// Used in [CameraPlatform.createCameraWithSettings].
/// Allows to tune recorded video parameters, such as resolution, frame rate, bitrate.
class MediaSettings {
  /// Creates a [MediaSettings].
  const MediaSettings({
    this.resolutionPreset,
    this.fps,
    this.videoBitrate,
    this.audioBitrate,
    this.enableAudio = false,
  });

  /// [ResolutionPreset] affect the quality of video recording and image capture.
  final ResolutionPreset? resolutionPreset;

  /// Rate at which frames should be captured by the camera in frames per second.
  final int? fps;

  /// Sets the video encoding bit rate for recording.
  final int? videoBitrate;

  /// Sets the audio encoding bit rate for recording.
  final int? audioBitrate;

  /// Controls audio presence in recorded video.
  final bool enableAudio;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaSettings &&
          runtimeType == other.runtimeType &&
          resolutionPreset == other.resolutionPreset &&
          fps == other.fps &&
          videoBitrate == other.videoBitrate &&
          audioBitrate == other.audioBitrate &&
          enableAudio == other.enableAudio;

  @override
  int get hashCode =>
      resolutionPreset.hashCode ^
      fps.hashCode ^
      videoBitrate.hashCode ^
      audioBitrate.hashCode ^
      enableAudio.hashCode;

  @override
  String toString() =>
      'MediaSettings{resolutionPreset: $resolutionPreset, fps: $fps, videoBitrate: $videoBitrate, audioBitrate: $audioBitrate, enableAudio: $enableAudio}';
}
