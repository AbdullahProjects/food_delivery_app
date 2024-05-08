import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/consts/dimensions.dart';

Widget foodRow({text, iconColor, icon, iconSize=18, textSize=14}) {
  return Row(
    children: [
      Icon(
        icon,
        color: iconColor,
        size: Dimension.widthSize(iconSize),
      ),
      Dimension.widthSize(2).widthBox,
      mediumText(
          text: "$text",
          color: AppColors.signColor,
          size: Dimension.widthSize(textSize)),
    ],
  );
}
