import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/views/main_screen/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: MainPage(),
    );
  }
}