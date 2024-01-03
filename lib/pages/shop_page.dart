import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/shoe.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // method add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // show succeful dialog to user
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Succesfully added!"),
              content: Text("Check your cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                  // padding margin
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 25),

                  // box decoration
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25)),

                  // text and search icon
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // search bar
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  // message
                ),
                const Text(
                  'Note: Everyone doesnt learn Flutter is the loser one!',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Picks🔥',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "See all👟",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ))
              ],
            ));
  }
}
