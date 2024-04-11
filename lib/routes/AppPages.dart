

import 'package:get/get.dart';
import 'package:sushi_m/features/cart/bindings/cartBinding.dart';
import 'package:sushi_m/features/cart/presentation/pages/cart.dart';
import 'package:sushi_m/features/home/presentation/pages/home.dart';
import 'package:sushi_m/features/login/presentation/pages/login.dart';
import 'package:sushi_m/features/menu/bindings/menuBinding.dart';
import 'package:sushi_m/features/menu/presentation/pages/menu.dart';
import 'package:sushi_m/features/profile/presentation/pages/profile.dart';
import 'package:sushi_m/routes/routes.dart';

class AppPages{
  static final routes =[
    GetPage(name: Routes.MENU, page: ()=> const Menu(),binding: MenuBinding()),
    GetPage(name: Routes.CART, page: ()=> const Cart(),binding: CartBinding()),
    GetPage(name: Routes.HOME, page: ()=> const Home()),
    GetPage(name: Routes.PROFILE, page: ()=> const Profile()),
    GetPage(name: Routes.LOGIN, page: ()=> const Login()),

  ];
}