import 'package:food_delivery_app/consts/consts.dart';

Widget blackText({text = "Text", color = Colors.black, size=14.0}) {
  return "$text".text.fontFamily(robotoBlack).color(color).size(size).make();
}

Widget boldText({text = "Text", color = Colors.black, size=14.0}) {
  return "$text".text.fontFamily(robotoBold).color(color).size(size).make();
}

Widget mediumText({text = "Text", color = Colors.black, size=14.0}) {
  return "$text".text.fontFamily(robotoMedium).color(color).size(size).make();
}

Widget regularText({text = "Text", color = Colors.black, size=14.0}) {
  return "$text".text.fontFamily(robotoRegular).color(color).size(size).make();
}
