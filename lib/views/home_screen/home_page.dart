import 'package:dots_indicator/dots_indicator.dart';
import 'package:food_delivery_app/common_widgets/common_widgets.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/views/home_screen/components/popular_food.dart';
import 'package:food_delivery_app/views/home_screen/components/slider.dart';
import 'package:food_delivery_app/views/home_screen/popular_food_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentDot = 0.0;
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
                Dimension.heightSize(10).heightBox,
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
                            size: Dimension.widthSize(20)),
                        Row(
                          children: [
                            regularText(
                                text: "Chattogram",
                                color: AppColors.titleColor,
                                size: Dimension.widthSize(14)),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.textColor,
                            )
                          ],
                        )
                      ],
                    ),
                    // icon box
                    Icon(
                      Icons.search,
                      color: AppColors.whiteColor,
                      size: Dimension.widthSize(28),
                    )
                        .box
                        .size(Dimension.widthSize(40), Dimension.heightSize(40))
                        .roundedSM
                        .color(AppColors.mainColor)
                        .makeCentered()
                  ],
                )
                    .box
                    .padding(EdgeInsets.symmetric(
                        horizontal: Dimension.widthSize(10)))
                    .make(),
                Dimension.heightSize(10).heightBox,
                // slider ======================================================
                VxSwiper.builder(
                    height: Dimension.swiperHeight, //260
                    enlargeCenterPage: true,
                    // aspectRatio: 16 / 9,
                    scrollPhysics: const BouncingScrollPhysics(),
                    enableInfiniteScroll: false,
                    itemCount: 5,
                    onPageChanged: (index) {
                      setState(() {
                        currentDot = index.toDouble();
                      });
                    },
                    itemBuilder: (context, index) {
                      return customSlider(
                              screen_width: context.screenWidth,
                              foodImage: homeSliderFoodImages[index],
                              foodName: homeSliderFoodNames[index],
                              ratings: homeSliderFoodRatings[index],
                              commentsCount: homeSliderFoodComments[index],
                              desc: homeSliderFoodDesc[index],
                              location: homeSliderFoodLocation[index],
                              time: homeSliderFoodTime[index])
                          .box
                          .margin(EdgeInsets.symmetric(
                              horizontal: Dimension.widthSize(6), vertical: 2))
                          .make()
                          .onTap(() {
                        Get.to(() => PopularFoodDetails(
                            homeSliderFoodImages[index],
                            homeSliderFoodNames[index],
                            homeSliderFoodRatings[index],
                            homeSliderFoodComments[index],
                            homeSliderFoodDesc[index],
                            homeSliderFoodLocation[index],
                            homeSliderFoodDetailDesc[index],
                            homeSliderFoodTime[index]));
                      });
                    }),
                DotsIndicator(
                  dotsCount: 5,
                  position: currentDot,
                  decorator: DotsDecorator(
                    activeColor: AppColors.mainColor,
                    color: AppColors.textColor,
                    size: Size.square(Dimension.widthSize(8).toDouble()),
                    activeSize:
                        Size(Dimension.widthSize(16), Dimension.widthSize(8)),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Dimension.widthSize(5).toDouble())),
                  ),
                ),
                Dimension.heightSize(15).heightBox,
                // popular food pairing ========================================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    boldText(
                        text: "Popular",
                        color: AppColors.mainBlackColor,
                        size: Dimension.widthSize(20)),
                    Dimension.widthSize(5).widthBox,
                    mediumText(
                            text: ".",
                            color: AppColors.textColor,
                            size: Dimension.widthSize(20))
                        .box
                        .margin(
                            EdgeInsets.only(bottom: Dimension.heightSize(3)))
                        .make(),
                    Dimension.widthSize(5).widthBox,
                    mediumText(
                            text: "Food pairing",
                            color: AppColors.textColor,
                            size: Dimension.widthSize(14))
                        .box
                        .margin(
                            EdgeInsets.only(bottom: Dimension.heightSize(3)))
                        .make(),
                  ],
                )
                    .box
                    .padding(EdgeInsets.symmetric(
                        horizontal: Dimension.widthSize(5)))
                    .make(),
                Dimension.heightSize(15).heightBox,
                Column(
                  children: List.generate(7, (index) {
                    return popularFoodPairing(
                            img: foodImagesList[index],
                            foodName: foodNamesList[index],
                            foodDesc: foodDescList[index],
                            foodIcon1_Detail: foodIcon1List[index],
                            foodIcon2_Detail: foodIcon2List[index],
                            foodIcon3_Detail: foodIcon3List[index])
                        .onTap(() {
                      Get.to(
                        () => PopularFoodDetails(
                          foodImagesList[index],
                          foodNamesList[index],
                          foodRatings[index],
                          foodComments[index],
                          foodIcon1List[index],
                          foodIcon2List[index],
                          foodDetailDescList[index],
                          foodIcon3List[index],
                        ),
                      );
                    });
                  }),
                ),
                Dimension.heightSize(20).heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
