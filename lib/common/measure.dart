import 'package:fl_clash/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Measure {
  final TextScaler _textScale;
  late BuildContext context;

  Measure.of(this.context) : _textScale = MediaQuery.of(context).textScaler;

  Size computeTextSize(Text text) {
    final textPainter = TextPainter(
      text: TextSpan(text: text.data, style: text.style),
      maxLines: text.maxLines,
      textScaler: _textScale,
      textDirection: text.textDirection ?? TextDirection.ltr,
    )..layout();
    return textPainter.size;
  }

  double? _bodyMediumHeight;
  double? _bodySmallHeight;
  double? _labelSmallHeight;
  double? _labelMediumHeight;
  double? _titleLargeHeight;
  double? _titleMediumHeight;

  double get bodyMediumHeight {
    _bodyMediumHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.bodyMedium,
      ),
    ).height;
    return _bodyMediumHeight!;
  }

  double get bodySmallHeight {
    _bodySmallHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.bodySmall,
      ),
    ).height;
    return _bodySmallHeight!;
  }

  double get labelSmallHeight {
    _labelSmallHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.labelSmall,
      ),
    ).height;
    return _labelSmallHeight!;
  }

  double get labelMediumHeight {
    _labelMediumHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.labelMedium,
      ),
    ).height;
    return _labelMediumHeight!;
  }

  double get titleLargeHeight {
    _titleLargeHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.titleLarge,
      ),
    ).height;
    return _titleLargeHeight!;
  }

  double get titleMediumHeight {
    _titleMediumHeight ??= computeTextSize(
      Text(
        "",
        style: context.textTheme.titleMedium,
      ),
    ).height;
    return _titleMediumHeight!;
  }
}
