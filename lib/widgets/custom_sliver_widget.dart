import 'package:flutter/material.dart';

class CustomSliverView extends StatelessWidget {
  CustomSliverView({Key? key, required this.columnList, this.padding})
      : super(key: key);
  final List<Widget> columnList;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Column(
              children: columnList,
            ),
          ),
        ),
      ],
    );
  }


}