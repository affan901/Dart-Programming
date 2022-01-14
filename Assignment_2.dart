// ----------- Assignment - 02  -------------  //
// ---- Facebook MarketPlace Listing ----- //

void main() {
  // ----- Initializing List ----- //
  List<Map<String, String>> data = [
    {
      "Product Title": "24k Gold Serum",
      "Product Price": "449",
      "Product Category": "Womens",
      "Product Condition": "New",
      "Product Description":
          ''' 24k golden ampoule serum is enriched with rose-hip seed oil.
    The seed oil enters quickly to visibly brightening, nourishing and improving the texture of your skin.
    Vitamin A, vitamin C, linoleic and linolenic acids are packed in this product.'''
    },
  ];

  // ----- Adding Data to List ------- //
  // Taking random example to take input from User

  var dataEntry = <String, String>{};

  var Product_title = "Sabaloon Hair Spray";
  var Product_Price = "299";
  var Product_Category = "Unisex";
  var Product_Condition = "New";
  var Product_Description =
      ''' Sabalon hair spray is 100% outclass result on hair and also suitable
                             for both men and women. This hair spray provides long lasting performance.''';

  // --- Adding it to Map ---
  dataEntry["Product Title"] = Product_title;
  dataEntry["Product Price"] = Product_Price;
  dataEntry["Product Category"] = Product_Category;
  dataEntry["Product Condition"] = Product_Condition;
  dataEntry["Product Description"] = Product_Description;

  // --- Finally adding it to main list ---
  data.add(dataEntry);

  // -------- Displaying Data of product  --------

  // --- Storing all keys --- //
  var keylst = [];
  for (var item in data) {
    for (var keys in item.keys) {
      keylst.add(keys);
    }
  }

  // --- Storing all values --- //
  var vallst = [];
  for (var item in data) {
    for (var values in item.values) {
      vallst.add(values);
    }
  }
  // --- Printing Data --- //
  for (var i = 0; i < keylst.length; i++) {
    if (i == 5) {
      print("\n");
    }
    print("${keylst[i]}: ${vallst[i]}");
  }
}
