extension Util on String {
  static const _flagOffSet = 0x1F1E6, _asciiOffSet = 0x41;
  String toFlagEmoji() {
    if (this == 'UK') {
      return '🇬🇧';
    } else if (isEmpty || this == 'INT') {
      return '🌎';
    } else {
      final char1 = codeUnitAt(0) - _asciiOffSet + _flagOffSet,
          char2 = codeUnitAt(1) - _asciiOffSet + _flagOffSet;
      return String.fromCharCode(char1) + String.fromCharCode(char2);
    }
  }
}
