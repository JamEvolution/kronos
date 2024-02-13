import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'link.g.dart';

@JsonSerializable()
@immutable
final class Link with EquatableMixin {
  String? fromToUser;
  String? videoId;
  String? videoLink;
  String? videoChannel;

  Link({
    this.fromToUser,
    this.videoId,
    this.videoLink,
    this.videoChannel,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);

  @override
  List<Object?> get props => [fromToUser, videoId, videoLink, videoChannel];

  Link copyWith({
    String? fromToUser,
    String? videoId,
    String? videoLink,
    String? videoChannel,
  }) {
    return Link(
      fromToUser: fromToUser ?? this.fromToUser,
      videoId: videoId ?? this.videoId,
      videoLink: videoLink ?? this.videoLink,
      videoChannel: videoChannel ?? this.videoChannel,
    );
  }
}
