enum ProjectRadius {
  /// 8.0
  small(8),

  /// 16.0
  medium(16),

  /// 20.0
  normal(20),

  /// 32.00
  large(32);

  final double value;
  const ProjectRadius(this.value);
}
