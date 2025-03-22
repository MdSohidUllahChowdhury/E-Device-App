import 'dart:collection';
import 'package:e_device_app/Model/device_model.dart';
import 'package:flutter/material.dart';

class CartController extends ChangeNotifier {
  
  final List<DeviceModel> _cart = [];
  UnmodifiableListView get callingCart => UnmodifiableListView(_cart);
  
  void adtoCart(DeviceModel item) {
    _cart.add(item);
    notifyListeners();
  }
  
}