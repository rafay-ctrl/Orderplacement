import 'dart:async';
import 'dart:io';

// The List contains the available Medicine
Map Medicine_Inventory = {
  "Panadol": "600",
  "tramadol": "200",
  "Ponstan": "500",
  "Actidil": "30",
  "Brufen": "90",
  "Getryl": "250",
  "Risek": "400",
  "Nuberol;": "117",
  "Neuromet": "660",
  "Leflox": "250",
};
// The List contains the available General items
Map Generals_Inventory = {
  "Baby Shampoo": "200",
  "Men's Shampoo": "400",
  "Women's shampoo": "500",
  "Tooth Paste": "120",
  "Perfume": "800",
  "Shoe Polish": "250",
  "Facewash": "150",
  "Bodywash": "117",
  "Soap": "60",
  "Surf": "250",
};
// The List contains the available Diapers
Map Diapers_Inventory = {
  "Bona Papa": "1200",
  "Canbebe": "1400",
  "Molfix": "1500",
  "Shield": "1120",
  "Royal": "1800",
  "Babyjee": "1250",
  "Carebaby": "1150",
  "Mimipapa": "1250",
};
// cart is kept empty for now
List cart = [];
void main() {
  print("Welcome to XYZ Medical Store");
  print("Enter your Name");
  // taking user details
  String? personuserName = stdin.readLineSync();
  print("Enter your user email");
  String? personuseremail = stdin.readLineSync();
  // giving options to user to select
  print("press 1 for view available medicines");
  print("press 2 for view available General Items");
  print("press 3 for view available Baby Diapers");
  print("press 4 for Search items");
  print("press 5 for Placing an Order");
  print("press anyother key for Exit");
  // proceeding as per user request
  var user_input = stdin.readLineSync()!;
  if (user_input == "1") {
    // calling a relevent fuction placed below as per request
    Avialable_Medicines();
  } else if (user_input == "2") {
// calling a relevent fuction placed below as per request
    Avialable_Generalitems();
  } else if (user_input == "3") {
    // calling a relevent fuction placed below as per request
    Available_diapers();
  } else if (user_input == "4") {
    // giving options to user for searching an item
    Search_Items();
  } else if (user_input == "5") {
    // giving options to user for order placement
    Order_Placements();
  } else {
    print("Thankyou for Visiting XYZ Medical Store");
  }
}

// medicine order function
Avialable_Medicines() {
  print(Medicine_Inventory);
  print("for placing an Order from the given list press 0");
  print("for going back to Main Menu press 1");
  var user_order = stdin.readLineSync()!;
  if (user_order == "0") {
    print("Please type the name of item from the List");
    var user_item = stdin.readLineSync()!;
    cart.add(user_item);
    // checking user input if it it in our list
    if (Medicine_Inventory.containsKey(user_item)) {
      print("enter the quantity");
      var quantity = stdin.readLineSync()!;
      print(
          "The $user_item have been added in your cart in $quantity quantity");
      print("press 1 to veiw your cart");
      print("press 0 to go back to main menu");
      var view_cart = stdin.readLineSync()!;
      // order confirmation
      if (view_cart == "1") {
        print(cart);
        print("if you want to place an order then press Y");
        print("if you want to go back to main menu then press N");
        var confirmation = stdin.readLineSync()!;
        if (confirmation == "Y") {
          print("Enter your address");
          var address = stdin.readLineSync()!;
          print(
              "your $user_item in $quantity quantity will be delivered to $address in 1 week. ");
          print("thankyou for shopping");
        } else {
          main();
        }
      } else if (view_cart == "0") {
        {
          main();
        }
      }
      ;
    } else {
      print(
          "your entered item is not avialable right now please visit us later");
      print("Thankyou  for visiting us");
    }
  } else if (user_order == "1") {
    print("Thankyou for visiting us");
    main();
  } else {
    print("Thankyou for visting the XYZ Medical Store");
  }
}

// medicine order function
Avialable_Generalitems() {
  print(Generals_Inventory);
  print("for placing an Order from the given list press 0");
  print("for going back to Main Menu press 1");
  var user_order = stdin.readLineSync()!;
  if (user_order == "0") {
    print("Please type the name of item from the List");
    var user_item = stdin.readLineSync()!;
    cart.add(user_item);
    if (Generals_Inventory.containsKey(user_item)) {
      print("enter the quantity");
      var quantity = stdin.readLineSync()!;
      print(
          "The $user_item have been added in your cart in $quantity quantity");
      print("press 1 to veiw your cart");
      print("press 0 to go back to main menu");
      var view_cart = stdin.readLineSync()!;
      if (view_cart == "1") {
        print(cart);
        print("if you want to place an order then press Y");
        print("if you want to go back to main menu then press N");
        var confirmation = stdin.readLineSync()!;
        if (confirmation == "Y") {
          print("Enter your address");
          var address = stdin.readLineSync()!;
          print(
              "your $user_item in $quantity quantity will be delivered to $address in 1 week. ");
          print("thankyou for shopping");
        } else {
          main();
        }
      } else if (view_cart == "0") {
        {
          main();
        }
      }
      ;
    } else {
      print(
          "your entered item is not avialable right now please visit us later");
      print("Thankyou  for visiting us");
    }
  } else if (user_order == "1") {
    print("Thankyou for visiting us");
    main();
  } else {
    print("Thankyou for visting the XYZ Medical Store");
  }
}

Available_diapers() {
  print(Diapers_Inventory);
  print("for placing an Order from the given list press 0");
  print("for going back to Main Menu press 1");
  var user_order = stdin.readLineSync()!;
  if (user_order == "0") {
    print("Please type the name of item from the List");
    var user_item = stdin.readLineSync()!;
    cart.add(user_item);
    if (Diapers_Inventory.containsKey(user_item)) {
      print("enter the quantity");
      var quantity = stdin.readLineSync()!;
      print(
          "The $user_item have been added in your cart in $quantity quantity");
      print("press 1 to veiw your cart");
      print("press 0 to go back to main menu");
      var view_cart = stdin.readLineSync()!;
      if (view_cart == "1") {
        print(cart);
        print("if you want to place an order then press Y");
        print("if you want to go back to main menu then press N");
        var confirmation = stdin.readLineSync()!;
        if (confirmation == "Y") {
          print("Enter your address");
          var address = stdin.readLineSync()!;
          print(
              "your $user_item in $quantity quantity will be delivered to $address in 1 week. ");
          print("thankyou for shopping");
        } else {
          main();
        }
      } else if (view_cart == "0") {
        {
          main();
        }
      }
      ;
    } else {
      print(
          "your entered item is not avialable right now please visit us later");
      print("Thankyou  for visiting us");
    }
  } else if (user_order == "1") {
    print("Thankyou for visiting us");
    main();
  } else {
    print("Thankyou for visting the XYZ Medical Store");
  }
}

// user functions to search
Search_Items() {
  print("Please Enter the item you want to purchase");
  var search_item = stdin.readLineSync()!;
  if (Medicine_Inventory.containsKey(search_item)) {
    Avialable_Medicines();
  } else if (Diapers_Inventory.containsKey(search_item)) {
    Available_diapers();
  } else if (Generals_Inventory.containsKey(search_item)) {
    Avialable_Generalitems();
  } else {
    print("The item you entered in not available");
    print("Thankyou for visiting us");
  }
}

Order_Placements() {
  print(Medicine_Inventory);
  print(Diapers_Inventory);
  print(Generals_Inventory);
  print("If you want to order from List 1 then press 1");
  print("If you want to order from List 2 then press 2");
  print("If you want to order from List 3 then press 3");
  var customer_order = stdin.readLineSync()!;
  if (customer_order == "1") {
    Avialable_Medicines();
  } else if (customer_order == "2") {
    Available_diapers();
  } else if (customer_order == "3") {
    Avialable_Generalitems();
  } else {
    print("You have entered an incorrect item");
    print("If you want to go back to main menu press 0");
    print("If you want to exit press 1");
    var user_last = stdin.readLineSync()!;
    if (user_last == "0") {
      main();
    } else if (user_last == "1") {
      print("Thankyou for visiting us");
    }
  }
}
