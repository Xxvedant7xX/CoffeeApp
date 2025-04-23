import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //heading message
            Text('How would you like your coffee?',
            style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 25,),

            //list of coffee to buy
            Expanded(child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder:(context, index) {
              // get indiviual coffee
              Coffee eachCoffee = value.coffeeShop[index];

              // return the tile for this coffee
              return CoffeeTile(coffee: eachCoffee);
            },
           ),
          ),
        ],
        ),
      ),
    ),
    );
  }
}