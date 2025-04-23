import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  const CoffeeTile({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(coffee.name),
      subtitle: Text(coffee.price),
      leading: Image.asset(coffee.imagePath),
    );
  }
}