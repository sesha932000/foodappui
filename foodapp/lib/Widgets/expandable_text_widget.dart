//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:foodapp/Widgets/small_text.dart';
// import 'package:foodapp/utils/colors.dart';
// import 'package:foodapp/utils/dimensions.dart';
//
// class ExpandableTextWidget extends StatefulWidget {
//   final String text;
//
//   const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);
//
//   @override
//   _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
// }
//
// class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
//   late String fistHalf;
//    late String secondHalf;
//   bool hiddenText =true;
//
//   double textHeight =Dimensions.screenHeight/5.63;
//   @override
//   void initSate(){
//     super.initState();
//       if(widget.text.length>textHeight){
//         fistHalf = widget.text.substring(0,textHeight.toInt());
//         secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
//       }else{
//         fistHalf=widget.text;
//         secondHalf="";
//       }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:secondHalf.isEmpty?SmallText(text:fistHalf):Column(
//         children: [
//           SmallText(text: hiddenText?(fistHalf+"..."):(fistHalf+secondHalf)),
//           InkWell(
//             onTap: (){
//               setState(() {
//                  hiddenText=!hiddenText;
//               });
//             },
//           child:Row(
//             children: [SmallText(text: "Show more",color: AppColors.mainColor),
//             Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
//             ],
//           )
//           ),
//
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:foodapp/Widgets/small_text.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 3.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height: 1.8,
                  color: AppColors.paraColor,
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                  size: Dimensions.font16,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        hiddenText ? "Show More" : "Show Less",
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
