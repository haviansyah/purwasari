import 'package:flutter/material.dart';

class PurwasariBackButton extends StatelessWidget {
  final Color iconColor;
  const PurwasariBackButton({
    Key key,
    this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: this.iconColor),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
