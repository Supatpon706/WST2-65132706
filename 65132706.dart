void main() {
  // สร้าง instance ของ Person
  Person owner = Person(name: 'Lin Ker');
  // สร้าง instance ของ Engine
  Engine engine = Engine(model: 'V10', speed: 200);
  // สร้าง instance ของ Honda
  Honda honda = Honda(brand: 'Honda', model: 'Toyota', owner: owner, engine: engine, color: 'Green');
  // เรียกใช้ฟังก์ชัน displayCarInfo() และ run() ของ Honda
  honda.displayCarInfo();
  honda.run();
}

class Person {
  String n_name;
  Person({required String name}) : n_name = name;
  
  // getter และ setter สำหรับ name
  String get name => n_name;
  set name(String name) => n_name = name;
}

class Engine {
  String m_model;
  int s_speed;
  Engine({required String model, required int speed})
      : m_model = model,
        s_speed = speed;
  
  // getter และ setter สำหรับ model
  String get model => m_model;
  set model(String model) => m_model = model;
  // getter และ setter สำหรับ speed
  int get speed => s_speed;
  set speed(int speed) => s_speed = speed;
  
  // ฟังก์ชัน displayEngineInfo()
  void displayEngineInfo() {
    print('Engine Model: $m_model');
    print('Engine Speed: $s_speed km/h');
  }
}

class Car {
  String b_brand;
  String m_model;
  Person o_owner;
  Engine e_engine;
  Car({
    required String brand,
    required String model,
    required Person owner,
    required Engine engine,
  })  : b_brand = brand,
        m_model = model,
        o_owner = owner,
        e_engine = engine;
  
  // getter และ setter สำหรับ brand
  String get brand => b_brand;
  set brand(String brand) => b_brand = brand;
  // getter และ setter สำหรับ model
  String get model => m_model;
  set model(String model) => m_model = model;
  // getter และ setter สำหรับ owner
  Person get owner => o_owner;
  set owner(Person owner) => o_owner = owner;
  // getter และ setter สำหรับ engine
  Engine get engine => e_engine;
  set engine(Engine engine) => e_engine = engine;
  
  // ฟังก์ชัน displayCarInfo()
  void displayCarInfo() {
    print('Brand: $b_brand');
    print('Model: $m_model');
    print('Owner: ${o_owner.name}');
    e_engine.displayEngineInfo();
  }
  // ฟังก์ชัน run()
  void run() {
    print('Running at ${e_engine.speed} km/h');
  }
}

class Honda extends Car {
  String c_color;
  Honda({
    required String brand,
    required String model,
    required Person owner,
    required Engine engine,
    required String color,
  })  : c_color = color,
        super(brand: brand, model: model, owner: owner, engine: engine);
  
  // getter และ setter สำหรับ color
  String get color => c_color;
  set color(String color) => c_color = color;
  
  // Override ฟังก์ชัน run()
  @override
  void run() {
    print('Running at 120 km/h');
  }
  // Override ฟังก์ชัน displayCarInfo()
  @override
  void displayCarInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $c_color');
    print('Owner: ${owner.name}');
    engine.displayEngineInfo();
  }
}
