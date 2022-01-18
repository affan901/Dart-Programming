import "dart:io";

checkFavorite(String searchFor) {
  List<String> items = ["Flutter", "Android", "Python", "Java", "WordPress"];

  for (var data in items) {
    if (data == searchFor) {
      print("$searchFor found in the list!!");
      break;
    } else {
      print("$searchFor not found in the list!!");
      break;
    }
  }
}

void main() {
  print("-------- Assignment:04 ---------");
  print("Enter Name to find: ");

  while (true) {
    // --- Taking Input ---
    var search = stdin.readLineSync()!;

    // --- Checking Condition either empty input or integer input ---
    if (search == "" || double.tryParse(search) != null) {
      print("Invalid Input!!");
    } else {
      // --- Calling Function ---
      checkFavorite(search);
      break;
    }
  }
}
