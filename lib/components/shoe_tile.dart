import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //picture
        Image.asset(shoe.imagePath),
        // desc
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            shoe.description,
            style: TextStyle(color: Colors.grey),
          ),
        ),

        // price + details
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // shoe name
                  Text(
                    shoe.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // price
                  Text(
                    "\$" + shoe.price,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

              // plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
        // button add to cart
      ]),
    );
  }
}
