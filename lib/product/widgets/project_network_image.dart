import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// Network image with lottie loading
final class ProjectNetworkImage extends StatelessWidget {
  /// When call the Network image widget use url
  const ProjectNetworkImage({required this.url, super.key});
  /// Network url
  final String? url;
  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.lottieSucces.lottie(package: 'gen'),
    );
  }
}
