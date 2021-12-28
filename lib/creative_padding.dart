library creative_padding;

import 'package:creative_responsive_values/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'padding_values.dart';

class CreativePadding extends StatelessWidget {
  final Widget child;
  final double top, left, right, bottom;
  const CreativePadding(
      {Key? key,
      required this.child,
      this.top = 1,
      this.left = 1,
      this.right = 1,
      this.bottom = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreativeResponsiveWidget(
      desktop: Padding(
        child: child,
        padding: EdgeInsets.fromLTRB(
          left * CreativePaddingValues.desktop,
          top * CreativePaddingValues.desktop,
          right * CreativePaddingValues.desktop,
          bottom * CreativePaddingValues.desktop,
        ),
      ),
      tablet: Padding(
        child: child,
        padding: EdgeInsets.fromLTRB(
          left * CreativePaddingValues.tablet,
          top * CreativePaddingValues.tablet,
          right * CreativePaddingValues.tablet,
          bottom * CreativePaddingValues.tablet,
        ),
      ),
      mobile: Padding(
        child: child,
        padding: EdgeInsets.fromLTRB(
          left * CreativePaddingValues.mobile,
          top * CreativePaddingValues.mobile,
          right * CreativePaddingValues.mobile,
          bottom * CreativePaddingValues.mobile,
        ),
      ),
    );
  }
}
