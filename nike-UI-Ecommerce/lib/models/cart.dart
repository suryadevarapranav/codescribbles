import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'lib/images/ZoomFreak.jpeg',
        description: 'The forward-thinking of his latest signature shoe...'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'lib/images/AirJordan.png',
        description:
            'You\'ve got the hops and the speed-lace up that enhances your forward drive and your play in the court...'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'lib/images/KDTREY.webp',
        description:
            'A secure midfoot strap is suiate for scoring binges and being the defensive juggernaut that your team needs...'),
    Shoe(
        name: 'Kyrie 7',
        price: '190',
        imagePath: 'lib/images/Kyrie.webp',
        description:
            'Bouncy cushioningis paired with soft yet supportive foam for that quick burst of pace down the court and that agile motion of shoot...'),
  ];

  // list of items in the user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners(); // any time we update the state notify the listeners.
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners(); // any time we update the state notify the listeners.
  }
}
