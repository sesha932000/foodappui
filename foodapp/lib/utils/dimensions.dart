import 'package:get/get.dart';
class Dimensions{

  /////BIG container
static double screenHeight = Get.context!.height;
static double screenWidth = Get.context!.width;

// 872/220=3.96 Device size



  /////Small container
  static double pageViewContainer =screenHeight /3.96;
  static double pageViewTextContainer =screenHeight /7.26;
  static double pageView =screenHeight /2.72;

  ///Dynamic height padding and margin
  static double height10 =screenHeight /87.2;
  static double height15 =screenHeight /58.13;
  static double height20 =screenHeight /43.6;
  static double height30 =screenHeight /29.0;
  static double height45 =screenHeight /19.37;

  ///Dynamic Width padding and margin
  static double width10 =screenHeight /87.2;
  static double width15 =screenHeight /58.13;
  static double width20 =screenHeight /43.6;
  static double width30 =screenHeight /29.0;
  static double width45 =screenHeight /19.37;

/// font SIze
  static double font20 =screenHeight /43.6;
  static double font26 =screenHeight /33.53;
  static double font16 =screenHeight /54.5;

  //// RAdius
  static double radius15 =screenHeight /58.13;
  static double radius20 =screenHeight /43.6;
  static double radius30 =screenHeight /29.0;

  ///// Icon size
  static double iconsize24 =screenHeight /36.33;
  static double iconsize16=screenHeight /54.5;
  ////list view size
  static double listViewImgSize  =screenWidth /3.33;
  static double listViewTextContSize  =screenWidth /3.6;

  //Popular food
  static double popularFoodImgSize  =screenHeight /2.49;

///Bottom Height
 static double bottomHightBar  =screenHeight /7.26;


}
