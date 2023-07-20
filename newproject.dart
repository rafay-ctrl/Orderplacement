import 'dart:async';
import 'dart:io';

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
List Order_details = [];
List Arrivals = [];
void main() {
  print("Welcome to XYZ Medical Store");
  print("Enter your Name");
  String? personuserName = stdin.readLineSync();
  print("Enter your user email");
  String? personuseremail = stdin.readLineSync();
  print("press 1 for view available medicines");
  print("press 2 for view available General Items");
  print("press 3 for view available Baby Diapers");
  print("press 4 for view available Search items");
  print("press 5 for Placing an Order");
  print("press anyother key for Exit");
  var user_input = stdin.readLineSync()!;
  if (user_input == "1") {
    Avialable_Medicines();
  } else if (user_input == "2") {
    Avialable_Generalitems();
  } else if (user_input == "3") {
    Available_diapers();
  } else if (user_input == "4") {
    Search_Items();
  } else if (user_input == "5") {
    Order_Placements();
  } else {
    print("Thankyou for Visiting XYZ Medical Store");
  }

  ;
}

Avialable_Medicines() {
  print(Medicine_Inventory);
}

Avialable_Generalitems() {
  print(Generals_Inventory);
}

Available_diapers() {
  print(Diapers_Inventory);
}

Search_Items() {}
Order_Placements() {}
