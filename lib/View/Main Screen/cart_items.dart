import 'package:e_device_app/Controller/provider_cart.dart';
import 'package:e_device_app/Widgets/custom_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 25,
        centerTitle: true,
        title: const Text('Favorite Items'),
      ),
      body: Consumer<CartController>(
        builder: (context, value, child) => Expanded(
          child: ListView.builder(
            itemCount: value.callingCart.length,
            itemBuilder: (context, index) {
              return CustomCart(item: value.callingCart[index]);
            },
          ),
        ),
      ),
    );
  }
}
