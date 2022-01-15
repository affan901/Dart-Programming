// -------- Assignment : 03 -------- //
// ------ Data Management System -------

void main() {
  // --- Initializing list ---

  // ------- Order Of data Storing -------
  //   0       1         2         3
  //  Name  roll no   Section    Semester

  List<List<String>> studentsData = [];
  studentsData.add(["Affan Minhas", "CS-20132", "B", "3"]);

  // ----  Adding Data to our data base -----

  var names = ["Hasnain", "Salman", "Waleed", "Kibriya"];
  var rolls = ["083", "127", "134", "120"];
  var sections = ["A", "A", "B", "C"];
  var semester = ["3", "3", "3", "2"];

  for (var i = 0; i < names.length; i++) {
    studentsData.add([names[i], "CS-20${rolls[i]}", sections[i], semester[i]]);
  }

  // ------- Displaying Our Data in list ----------
  print("Our data History: $studentsData\n");

  // ------ Displaying in professional form  --------
  for (var data in studentsData) {
    print("Student Name: ${data[0]}");
    print("Roll Number: ${data[1]}");
    print("Section: ${data[2]}");
    print("Semester: ${data[3]}");
    print("\n");
  }
}
