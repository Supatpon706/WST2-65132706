class Person {
  String _name;
  Person(this._name);
  // getter และ setter สำหรับ name
  String get name => _name;
  set name(String name) => _name = name;
}

class Engine {
  String _model;
  int _speed;
  Engine(this._model, this._speed);
  // getter และ setter สำหรับ model,speed
  String get model => _model;
  set model(String model) => _model = model;
  int get speed => _speed;
  set speed(int speed) => _speed = speed;

  void displayEngineInfo() {
    print('Engine Model: $_model');
    print('Engine Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;
  Car(this._brand, this._model, this._owner, this._engine);
  // getter และ setter สำหรับ brand,model,owner,engine
  String get brand => _brand;
  set brand(String brand) => _brand = brand;
  String get model => _model;
  set model(String model) => _model = model;
  Person get owner => _owner;
  set owner(Person owner) => _owner = owner;
  Engine get engine => _engine;
  set engine(Engine engine) => _engine = engine;

  void displayCarInfo() {
    print('Brand: $_brand');
    print('Model: $_model');
    print('Owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }
  void run() {
    print('The car is running at a speed of ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;
  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);
  // getter และ setter สำหรับ color
  String get color => _color;
  set color(String color) => _color = color;

  @override
  void run() {
    print('The Honda car is running at a speed of 120 km/h');
  }
  @override
  void displayCarInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $color');
    print('Owner: ${owner.name}');
    engine.displayEngineInfo();
  }
}

void main() {
  Person owner = Person('Lin Ker');
  Engine engine = Engine('V10', 200);
  Car car = Car('Toyota', 'Corolla', owner, engine);
  car.displayCarInfo();
  car.run();
  print('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
  Honda honda = Honda('Honda', 'Civic', owner, engine, 'Green');
  honda.displayCarInfo();
  honda.run();
}
