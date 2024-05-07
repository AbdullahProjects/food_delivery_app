import 'package:food_delivery_app/consts/consts.dart';

class Dimension {
  // screen widths and height
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // constants
  // static double size5 = screenHeight / 128; //screenHeight / 5
  // static double size8 = screenHeight / 80; //screenHeight / 8
  // static double size10 = screenHeight / 64; //screenHeight / 10
  // static double size12 = screenHeight / 53.3; //screenHeight / 12
  // static double size13 = screenHeight / 49.2; // screenHeight / 13
  // static double size14 = screenHeight / 45.7; // screenHeight / 14
  // static double size16 = screenHeight / 40; // screenHeight / 16
  // static double size18 = screenHeight / 36; // screenHeight / 18
  // static double size20 = screenHeight / 32; // screenHeight / 20
  // static double size28 = screenHeight / 23; // screenHeight / 28
  // static double size40 = screenHeight / 16; // screenHeight / 40

  // for width
  static double widthSize(int num) {
    return screenWidth / (screenWidth / num);
  }
  // for height
  static double heightSize(int num) {
    return screenHeight / (screenHeight / num);
  }

  // home_page.dart ============================================================
  // slider
  static double swiperHeight = screenHeight / 2.46; // screenHeight / 260
  static double swiperImageHeight = screenHeight / 3.37; // screenHeight / 190
  static double swiperFoodInfoHeight = screenHeight / 6.4; // screenHeight / 100
  static double swiperStackHeight = screenHeight / 2.91; // screenHeight / 220
}
