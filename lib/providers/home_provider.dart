import 'package:flutter/foundation.dart';
import 'package:food_app_delivery/models/menu.dart';

class HomeProvider with ChangeNotifier {
  final List<Menu> _popular = [
    Menu(
      name: 'Special Pizza',
      desc: 'With tommato souce',
      price: 125,
      imageUrl:
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
    Menu(
      name: 'Special Dimsum',
      desc: 'With meat filling',
      price: 150,
      imageUrl:
          'https://images.unsplash.com/photo-1563245370-63ffc97abdbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
    Menu(
      name: 'Special Chazuke',
      desc: 'With meat filling',
      price: 295,
      imageUrl:
          'https://images.unsplash.com/photo-1521136828306-f7b6db30f4ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
  ];

  List<Menu> get popular => _popular;
}
