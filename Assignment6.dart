import 'dart:io';

class Contact {
  List<List<String>> allContacts = [];
  String name = "";
  String phone = "0";
  String email = "";
  String dateOfBirth = "";

  Contact() {}

  checkPhoneBook() {
    if (this.allContacts.isEmpty) {
      print("PhoneBook is empty!! \n");
      return true;
    }
  }

  addContact() {
    print("\nPlease provide details: \n");
    print("Enter Name: ");
    this.name = stdin.readLineSync()!;

    bool correctPhone = false;
    while (!correctPhone) {
      print("\nEnter Phone number: ");
      this.phone = stdin.readLineSync()!;
      if (phone.length == 11) {
        correctPhone = true;
      } else {
        print("Invalid Phone Number!");
        continue;
      }
    }

    bool correctEmail = false;
    while (!correctEmail) {
      print("\nEnter email: ");
      this.email = stdin.readLineSync()!;
      if (email.contains("@")) {
        correctEmail = true;
      } else {
        print("Invalid Email!");
        continue;
      }
    }

    print("\nEnter Birth details: \n");
    print("Enter year of birth: ");
    String year = stdin.readLineSync()!;
    print("\nEnter month of birth: ");
    String month = stdin.readLineSync()!;
    print("\nEnter date of birth: ");
    String date = stdin.readLineSync()!;
    this.dateOfBirth = month + date + ", " + year;

    this.allContacts.add([this.name, this.phone, this.email, this.dateOfBirth]);
  }

  updateContact() {
    if (this.allContacts.isEmpty) {
      print("PhoneBook is empty!! \n");
      return;
    }
    print("Enter the index of contact: \n");
    String index = stdin.readLineSync()!;
    this.allContacts.removeAt(int.parse(index));
    addContact();
    print("\nContact updated successully!! \n");
  }

  displayContact() {
    if (this.allContacts.isEmpty) {
      print("PhoneBook is empty!! \n");
      return;
    }
    for (var contact in this.allContacts) {
      print("Name: ${contact[0]}");
      print("Phone: ${contact[1]}");
      print("Email: ${contact[2]}");
      print("Date Of Birth: ${contact[3]}\n");
    }
  }

  deleteContact() {
    if (checkPhoneBook()) {
      return;
    }
    print("Enter the index of contact: \n");
    String index = stdin.readLineSync()!;
    this.allContacts.removeAt(int.parse(index));
    print("\nContact deleted successfully!!\n");
  }
}

void main() {
  bool chaltaRahy = true;
  String choice = "";
  List<String> contacts = [];

  Contact contact_1 = Contact();

  print("===== Welcome to Contact Book =====\n");

  Mainloop:
  while (chaltaRahy) {
    print("=========== Main Menu ===========\n");
    print('''
        1: Add Contact
        2: Update Contact
        3: List All Contacts
        4: Delete a Contact
        5: Exit\n
    Please enter your choice: 
  ''');

    try {
      choice = stdin.readLineSync()!;
    } catch (e) {
      print(e);
    }

    switch (choice) {
      case "1":
        {
          contact_1.addContact();
          print("\nContact added to phone book successfully!!\n");
          break;
        }
      case "2":
        {
          contact_1.updateContact();
          break;
        }
      case "3":
        {
          contact_1.displayContact();
          break;
        }
      case "4":
        {
          contact_1.deleteContact();
          break;
        }
      case "5":
        {
          print("Exiting from phoneBook.......");
          break Mainloop;
        }
    }
  }
}
