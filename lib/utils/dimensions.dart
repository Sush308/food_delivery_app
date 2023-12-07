import 'package:get/get.dart';
class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
//height factor = currentHeight(683) / container height(220) = 3.10  843.4285714285714
  static double pageView = screenHeight / 2.635714285714286;  //320
  static double pageViewContainer = screenHeight / 3.833766233766234; //220
  static double pageViewTextContainer = screenHeight / 7.028571428571428;  //120

  //Height
  static double height10 = screenHeight / 84.34285714285714;
  static double height15 = screenHeight / 56.22857142857143;
  static double height20 = screenHeight / 42.17142857142857;
  static double height30 = screenHeight / 28.11428571428571;
  static double height45 = screenHeight / 18.74285714285714;
  static double height60 = screenHeight / 14.05714285714286;

  //Width
  static double width3 = screenHeight / 281.1428571428571;
  static double width5 = screenHeight / 168.6857142857143;
  static double width10 = screenHeight / 84.34285714285714;
  static double width15 = screenHeight / 56.22857142857143;
  static double width20 = screenHeight / 42.17142857142857;
  static double width30 = screenHeight / 28.11428571428571;
  static double width45 = screenHeight / 18.74285714285714;

  //Font
  static double font12 = screenHeight / 70.28571428571428;
  static double font20 = screenHeight / 42.17142857142857;
  static double font26 = screenHeight / 32.43956043956044;

  //Radius
  static double radius5 = screenHeight / 168.6857142857143;
  static double radius15 = screenHeight / 56.22857142857143;
  static double radius20 = screenHeight / 42.17142857142857;
  static double radius30 = screenHeight / 28.11428571428571;

  //Icon Size
  static double iconSize24 = screenHeight / 35.14285714285714;
  static double iconSize16 = screenHeight / 52.71428571428571;

  //List view image
  static double listViewImgSize = screenWidth / 3.428571428571428;
  static double listViewTextContSize = screenWidth / 4.114285714285714;

  //Popular food image
  static double popularFoodImgSize = screenHeight / 2.409795918367347;

  // Bottom height
  static double bottomHeightBar = screenHeight / 7.028571428571428;
  }

