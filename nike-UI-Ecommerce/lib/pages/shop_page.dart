import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // method for adding shoe to a cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // confirm to the user that the shoe was added to cart successfully..
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Item Successfully Added to Cart.."),
        content: Text("Check your Cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'everyone flies.. some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // hot picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks ️‍🔥️‍🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),

          // having a list of shoes...
          const SizedBox(
            height: 10,
          ),

          // list of shoes for sale..
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                /* manually getting a shoe
                //create a new shoe
                Shoe shoe = Shoe(
                    name: 'Air Jordan',
                    price: '240',
                    imagePath: 'lib/images/AirJordan.png',
                    description: 'cool shoe'); */

                // let's get the shoe dynamically...

                // get a shoe from shop list....
                Shoe shoe = value.getShoeList()[index];

                // return the shoe..
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
