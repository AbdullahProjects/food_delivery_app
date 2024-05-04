import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/common_widgets/text_styles.dart';
import 'package:food_delivery_app/views/home_screen/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            // main Body here
            child: Column(
              children: [
                10.heightBox,
                // header ======================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // text
                    Column(
                      children: [
                        mediumText(
                            text: "Bangladesh",
                            color: AppColors.mainColor,
                            size: 20.0),
                        Row(
                          children: [
                            regularText(
                                text: "Chattogram",
                                color: AppColors.titleColor),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.textColor,
                            )
                          ],
                        )
                      ],
                    ),
                    // icon box
                    const Icon(
                      Icons.search,
                      color: AppColors.whiteColor,
                      size: 28,
                    )
                        .box
                        .size(45, 45)
                        .roundedSM
                        .color(AppColors.mainColor)
                        .makeCentered()
                  ],
                )
                    .box
                    .padding(const EdgeInsets.symmetric(horizontal: 14))
                    .make(),
                10.heightBox,
                // slider ======================================================
                Container(
                  // width: context.screenWidth / 1.2,
                  height: 300,
                  child: PageView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return customSlider(
                            screen_width: context.screenWidth,
                            foodImage: homeSliderFoodImages[index],
                            foodName: homeSliderFoodNames[index],
                            ratings: homeSliderFoodRatings[index],
                            commentsCount: homeSliderFoodComments[index],
                            desc: homeSliderFoodDesc[index],
                            location: homeSliderFoodLocation[index],
                            time: homeSliderFoodTime[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
