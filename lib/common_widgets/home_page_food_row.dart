import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/consts/dimensions.dart';

Widget foodRow({text, iconColor, icon}) {
  return Row(
    children: [
      Icon(
        icon,
        color: iconColor,
        size: Dimension.widthSize(18),
      ),
      regularText(text: "$text", color: AppColors.signColor, size: Dimension.widthSize(14)),
    ],
  );
}
