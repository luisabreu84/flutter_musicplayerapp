import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    this.title,
    this.titlePadding = const EdgeInsets.only(left: 16, bottom: 18, top: 0),
    this.titleBuilder,
    this.sectionPadding = const EdgeInsets.only(top: 0, bottom: 30),
    required this.bodyBuilder,
  });

  final String? title;
  final Widget Function(BuildContext)? titleBuilder;
  final Widget Function(BuildContext) bodyBuilder;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry sectionPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: sectionPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: titlePadding,
              child: 
              Text(title.toString(), style: const TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 21.0,
                    overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                  textAlign: TextAlign.left),
            ),

          if (titleBuilder != null) 
            Builder(builder: titleBuilder!),

          Builder(builder: bodyBuilder),
        ],
      ),
    );
  }
}