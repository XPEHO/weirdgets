/// The enum of the different directions of the diagonal widget
enum DiagonalDirection { bottomRight, bottomLeft, topRight, topLeft }

/// The values returned by the DiagonalDirection enum
extension DiagonalDirectionExtension on DiagonalDirection {
  String get value {
    switch (this) {
      case DiagonalDirection.bottomRight:
        return "BOTTOM_RIGHT";
      case DiagonalDirection.bottomLeft:
        return "BOTTOM_LEFT";
      case DiagonalDirection.topRight:
        return "TOP_RIGHT";
      case DiagonalDirection.topLeft:
        return "TOP_LEFT";
      default:
        return "BOTTOM_RIGHT";
    }
  }
}
