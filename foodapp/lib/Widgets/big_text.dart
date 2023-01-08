import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    Key? key,
    this.color = const Color(0xff070707),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: "Roboto",
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size==0?Dimensions.font20:size,
      ),
    );
  }
}
