import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/consts/consts.dart';

Widget foodRow({text, iconColor, icon}) {
  return Row(
    children: [
      Icon(
        icon,
        color: iconColor,
      ),
      5.widthBox,
      regularText(text: "$text", color: AppColors.signColor),
    ],
  );
}
