import 'package:collection/collection.dart';

import 'food.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';

class Restaurant extends ChangeNotifier {
//list of food
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burgers a savorydelight.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Grilled Onions",
          price: 0.99,
        ),
        Addon(
          name: "Jalapenos",
          price: 1.99,
        ),
        Addon(
          name: "Extra BBQ Sauce",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh Avocado, lettuce, and tomato, served on a whole meal",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Vegan Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Grilled Mushrooms",
          price: 1.99,
        ),
        Addon(
          name: "Humus Spread",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A char-grilled chicken brest topped with a slice of grilled pineapple, swiss cheese",
      imagePath: "lib/images/burgers/aloha_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Teriyaki Glaze",
          price: 0.99,
        ),
        Addon(
          name: "Extra Pineapple",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.49,
        ),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This Burger is a blue cheese lover's dream. It features a succulent ground beef patty.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Sauteed Mushrooms",
          price: 0.99,
        ),
        Addon(
          name: "Fried Egg",
          price: 1.49,
        ),
        Addon(
          name: "Spicy Mayo",
          price: 2.99,
        ),
      ],
    ),
    //salads

    Food(
      name: "Caesar Salad",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/salads/caesar_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/salads/asiansesame_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/salads/southwest_salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread Side",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/sides/garlic_bread_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Loaded Fries Side",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/sides/loadedfries_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Mac Side",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/sides/mac_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Onion Rings Side",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/sides/onion_rings_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Sweet Potato Side",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/sides/sweet_potato_side.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    //desserts
    Food(
      name: "Apple Pie",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/apple_pie.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Cheese Cake",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/cheese_cake.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Chocolate Brownie",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/chocolate_brownie.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Red Velvet",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/redvelvet_dessert.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),

    //drinks
    Food(
      name: "Caramel Macchiato",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/drinks/caramel_macchiato.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/drinks/iced_tea.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/drinks/lemonade.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/drinks/smoothie.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado",
          price: 2.99,
        ),
      ],
    ),
  ];
  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T O R S
  
  */
  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is an item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S
  
  */

  //generate a receipt

  //formart double value into money

  //formart list addons into a string summary
}
