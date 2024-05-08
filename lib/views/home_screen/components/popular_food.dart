import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/consts/dimensions.dart';
import 'package:food_delivery_app/views/home_screen/components/home_page_food_row.dart';

Widget popularFoodPairing({img, foodName, foodDesc, foodIcon1_Detail, foodIcon2_Detail, foodIcon3_Detail}) {
  return Row(
    children: [
      Image.asset(
        img,
        fit: BoxFit.cover,
      )
          .box
          .width(Dimension.screenWidth / 2.8)
          .height(Dimension.heightSize(120))
          .shadowSm
          .roundedSM
          .clip(Clip.antiAlias)
          .make(),
      // Dimension.widthSize(5).widthBox,
      Container(
          width: Dimension.screenWidth - (Dimension.screenWidth / 2.34),
          height: Dimension.heightSize(90),
          padding: EdgeInsets.symmetric(
              horizontal: Dimension.widthSize(8),
              vertical: Dimension.heightSize(4)),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(Dimension.widthSize(5)),
              topRight: Radius.circular(Dimension.widthSize(5)),
            ),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(1, 2),
                  color: AppColors.textColor,
                  blurRadius: 2),
              BoxShadow(
                  offset: Offset(0, -1),
                  color: AppColors.textColor,
                  blurRadius: 2)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mediumText(
                  text: "$foodName",
                  isOverflow: true,
                  color: AppColors.titleColor,
                  size: Dimension.widthSize(20)),
              mediumText(
                  text: "$foodDesc",
                  isOverflow: true,
                  color: AppColors.signColor,
                  size: Dimension.widthSize(14)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  foodRow(
                      icon: Icons.circle,
                      iconColor: AppColors.iconColor1,
                      text: "$foodIcon1_Detail",
                      iconSize: 16,
                      textSize: 12),
                  foodRow(
                      icon: Icons.location_on,
                      iconColor: AppColors.mainColor,
                      text: "$foodIcon2_Detail",
                      iconSize: 16,
                      textSize: 12),
                  foodRow(
                      icon: Icons.access_time,
                      iconColor: AppColors.iconColor2,
                      text: "$foodIcon3_Detail",
                      iconSize: 16,
                      textSize: 12)
                ],
              )
            ],
          ))
    ],
  )
      .box
      .height(Dimension.heightSize(130))
      .width(Dimension.screenWidth)
      // .color(Colors.blue)
      .margin(EdgeInsets.only(
          left: Dimension.widthSize(6), bottom: Dimension.widthSize(10)))
      .make();
}
