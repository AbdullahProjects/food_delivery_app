import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/controllers/main_page_controller.dart';
import 'package:food_delivery_app/views/cart_screen/cart_page.dart';
import 'package:food_delivery_app/views/category_screen/category_page.dart';
import 'package:food_delivery_app/views/home_screen/home_page.dart';
import 'package:food_delivery_app/views/profile_screen/profile_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // initializing MainPageController
    var mainPageController = Get.put(MainPageController());
    // screens
    var screens = [
      const HomePage(),
      const CategoryPage(),
      const CartPage(),
      const ProfilePage()
    ];
    // nav bar items
    var navBarItems = [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 24,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
            size: 24,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
            size: 24,
          ),
          label: ''),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 24,
          ),
          label: ''),
    ];

    return Scaffold(
      // body content
      body: Column(
        children: [
          Obx(
            () => Expanded(
                child:
                    screens.elementAt(mainPageController.currentIndex.value)),
          )
        ],
      ),
      // bottom bar
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: mainPageController.currentIndex.value,
          selectedItemColor: AppColors.mainColor,
          elevation: 7.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.whiteColor,
          items: navBarItems,
          onTap: (value) {
            mainPageController.currentIndex.value = value;
          },
        ),
      ),
    );
  }
}
