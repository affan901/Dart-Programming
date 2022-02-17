class Vehicle {
  doService() {
    print("Vehicle is servicing...\n");
  }
}

class Car extends Vehicle {
  @override
  doService() {
    print("Car is servicing...");
  }
}

class Bus extends Vehicle {
  @override
  doService() {
    print("Bus is servicing...");
  }
}

class Truck extends Vehicle {
  @override
  doService() {
    print("Truck is servicing...");
  }
}

class Bike extends Vehicle {
  @override
  doService() {
    print("Bike is servicing...");
  }
}

serviceCenter(typeVehicle) {
  typeVehicle.doService();
}

//main-code
void main() {
  Vehicle v = Vehicle();
  Car c = Car();
  Bus b = Bus();
  Truck t = Truck();
  Bike bike = Bike();

  serviceCenter(v);
  serviceCenter(c);
  serviceCenter(b);
  serviceCenter(t);
  serviceCenter(bike);
}
