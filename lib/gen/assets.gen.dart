/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetImagesGen {
  const $AssetImagesGen();

  /// File path: asset/images/avatarmali.jpg
  AssetGenImage get avatarmali =>
      const AssetGenImage('asset/images/avatarmali.jpg');

  /// File path: asset/images/avataromer.jpg
  AssetGenImage get avataromer =>
      const AssetGenImage('asset/images/avataromer.jpg');

  /// File path: asset/images/avatarzabun.jpg
  AssetGenImage get avatarzabun =>
      const AssetGenImage('asset/images/avatarzabun.jpg');

  /// File path: asset/images/kronosLogo.jpeg
  AssetGenImage get kronosLogo =>
      const AssetGenImage('asset/images/kronosLogo.jpeg');

  /// File path: asset/images/kronosbg1.jpg
  AssetGenImage get kronosbg1 =>
      const AssetGenImage('asset/images/kronosbg1.jpg');

  /// File path: asset/images/kronosbg2.jpg
  AssetGenImage get kronosbg2 =>
      const AssetGenImage('asset/images/kronosbg2.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [avatarmali, avataromer, avatarzabun, kronosLogo, kronosbg1, kronosbg2];
}

class $AssetTranslationsGen {
  const $AssetTranslationsGen();

  /// File path: asset/translations/en.json
  String get en => 'asset/translations/en.json';

  /// File path: asset/translations/tr.json
  String get tr => 'asset/translations/tr.json';

  /// List of all assets
  List<String> get values => [en, tr];
}

class Assets {
  Assets._();

  static const $AssetImagesGen images = $AssetImagesGen();
  static const $AssetTranslationsGen translations = $AssetTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
