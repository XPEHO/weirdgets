/// The enum of the different sizes of the diagonal widget
enum DiagonalSize { max, min }

/// The values returned by the DiagonalSize enum
extension DiagonalSizeExtension on DiagonalSize {
  String get value {
    switch (this) {
      case DiagonalSize.min:
        return "MAX";
      case DiagonalSize.max:
        return "MIN";
      default:
        return "MIN";
    }
  }
}
