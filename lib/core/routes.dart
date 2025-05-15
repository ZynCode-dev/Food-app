
import 'package:food_app/views/pages/foodDetails.dart';
import 'package:food_app/views/pages/search.dart';
import 'package:food_app/views/pages/foodChosen.dart';
import 'package:food_app/views/pages/home.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: '/home',
    page: () => Home(),
    transition: Transition.native,
  ),
  GetPage(
    name: '/foodChosen',
    page: () => const FoodChosen(),
    transition: Transition.native,
  ),
  GetPage(
    name: '/search',
    page: () => const Search(),
    transition: Transition.native,
  ),
  GetPage(
    name: '/details',
    page: () => const Fooddetails(),
    transition: Transition.native,
  ),


];