import 'package:app_techtaste/modal/dish.dart';
import 'package:flutter/material.dart';

class BagProvider extends ChangeNotifier {
  List<Dish> dishesOnBag = [];

  addAllDishes(List<Dish> dishes) {
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  removeDish(Dish dish) {
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  clearBag() {
    dishesOnBag.clear();
    notifyListeners();
  }

  List<Dish> get dishes => dishesOnBag;

  Map<Dish, int> getMapByAmount() {
    final Map<Dish, int> map = {};
    for (var dish in dishesOnBag) {
      map[dish] = (map[dish] ?? 0) + 1;
    }
    return map;
  }

  double totalPrice() {
    double total = 0.0;
    final map = getMapByAmount();
    for (var entry in map.entries) {
      total += entry.key.price * entry.value;
    }
    return total;
  }
}
