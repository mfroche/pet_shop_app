import 'dart:js_interop_unsafe';

import 'package:first_app/constants.dart';
import 'package:first_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartItem = cart[index];

            return ListTile(
              leading: Image.asset(
                cartItem.imgUrl,
                height: 50,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: yellowColor,
                  )),
              title: Text(cartItem.breed),
              subtitle: Text(cartItem.loc),
            );
          }),
    );
  }
}
