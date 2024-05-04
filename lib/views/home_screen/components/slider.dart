import 'package:food_delivery_app/common_widgets/home_page_food_row.dart';
import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/consts/consts.dart';

Widget customSlider(
    {screen_width,
    foodImage,
    foodName,
    ratings,
    commentsCount,
    desc,
    location,
    time}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Stack(
        children: [
          // Food Image
          Image.asset(
            foodImage,
            fit: BoxFit.cover,
          )
              .box
              .width(screen_width / 1.2)
              .height(200)
              .roundedLg
              .shadowXl
              .clip(Clip.antiAlias)
              .make(),
          // Food Information; name, rating, etc
          Positioned(
            top: 150,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food name
                mediumText(
                    text: "$foodName", color: AppColors.titleColor, size: 23.0),
                // food rating and comments count
                Row(
                  children: [
                    VxRating(
                      maxRating: 5,
                      normalColor: AppColors.textColor,
                      selectionColor: AppColors.mainColor,
                      isSelectable: false,
                      value: double.parse(ratings),
                      size: 15,
                      onRatingUpdate: (value) {},
                    ),
                    15.widthBox,
                    regularText(text: "$ratings", color: AppColors.signColor),
                    15.widthBox,
                    regularText(
                        text: "$commentsCount comments",
                        color: AppColors.signColor),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    foodRow(
                        icon: Icons.circle,
                        iconColor: AppColors.iconColor1,
                        text: "$desc"),
                    foodRow(
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                        text: "$location"),
                    foodRow(
                        icon: Icons.access_time,
                        iconColor: AppColors.iconColor2,
                        text: "$time")
                  ],
                )
              ],
            )
                .box
                .width(screen_width / 1.3)
                .color(AppColors.whiteColor)
                .padding(
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10))
                .roundedSM
                .shadowMd
                .make(),
          )
        ],
      ).box.size(screen_width / 1.2, 270).make(),
    ],
  ).box.height(300).make();
}
