class Cup {
  double volume = 0.5;
  double currentWater = 0.5;

  void drink(double amount) {
    if (amount <= currentWater) {
      currentWater -= amount;
      print('Выпито $amount л, осталось ${currentWater.toStringAsFixed(2)} л');
    } else {
      print('Недостаточно воды! Выпито только $currentWater л');
      currentWater = 0;
    }
  }
}

class Human {
  String name;

  Human(this.name);

  void drinkFromCup(Cup cup, double amount) {
    print('$name пьет из кружки');
    cup.drink(amount);
  }
}

class StorageSystem {
  Map<String, dynamic> items = {};

  void put(String key, dynamic item) {
    items[key] = item;
    print('Положено: $key');
  }

  dynamic take(String key) {
    if (items.containsKey(key)) {
      var item = items[key];
      items.remove(key);
      print('Взято: $key');
      return item;
    }
    print('$key не найдено');
    return null;
  }
}

class Cabinet {
  List<StorageSystem> storages = [];

  Cabinet(int count) {
    for (int i = 0; i < count; i++) {
      storages.add(StorageSystem());
    }
  }

  void putInStorage(int index, String key, dynamic item) {
    if (index < storages.length) {
      storages[index].put(key, item);
    } else {
      print('Неверный индекс шкафа');
    }
  }

  dynamic takeFromStorage(int index, String key) {
    if (index < storages.length) {
      return storages[index].take(key);
    }
    print('Неверный индекс шкафа');
    return null;
  }
}

class BarbellDisc {
  double weight;

  BarbellDisc(this.weight);
}

class Barbell {
  double maxLoad;
  List<BarbellDisc> leftDiscs = [];
  List<BarbellDisc> rightDiscs = [];
  double currentWeight = 0;

  Barbell(this.maxLoad);

  bool addLeft(BarbellDisc disc) {
    if (currentWeight + disc.weight <= maxLoad) {
      leftDiscs.add(disc);
      currentWeight += disc.weight;
      print('Добавлен блин ${disc.weight}кг слева. Общий вес: $currentWeight кг');
      return true;
    } else {
      print('Превышен максимальный вес!');
      return false;
    }
  }

  bool addRight(BarbellDisc disc) {
    if (currentWeight + disc.weight <= maxLoad) {
      rightDiscs.add(disc);
      currentWeight += disc.weight;
      print('Добавлен блин ${disc.weight}кг справа. Общий вес: $currentWeight кг');
      return true;
    } else {
      print('Превышен максимальный вес!');
      return false;
    }
  }

  double getTotalWeight() {
    return currentWeight;
  }
}

class CurrencyConverter {
  Map<String, double> rates = {
    'USD': 1.0,
    'EUR': 0.92,
    'RUB': 92.5,
    'GBP': 0.79,
  };

  void setRate(String currency, double rateToUSD) {
    rates[currency] = rateToUSD;
  }

  double convert(double amount, String from, String to) {
    if (!rates.containsKey(from) || !rates.containsKey(to)) {
      print('Неизвестная валюта');
      return 0;
    }
    double inUSD = amount / rates[from]!;
    double result = inUSD * rates[to]!;
    print('$amount $from = ${result.toStringAsFixed(2)} $to');
    return result;
  }
}

class Garage<T> {
  List<T> items = [];

  void add(T item) {
    items.add(item);
    print('Добавлен ${item.runtimeType} в гараж');
  }

  T? remove(int index) {
    if (index < items.length) {
      T item = items.removeAt(index);
      print('Удален ${item.runtimeType} из гаража');
      return item;
    }
    print('Неверный индекс');
    return null;
  }

  List<T> getAll() {
    return items;
  }
}

class MyNumber {
  double value;

  MyNumber(this.value);

  MyNumber operator +(MyNumber other) {
    return MyNumber(value + other.value);
  }

  MyNumber operator -(MyNumber other) {
    return MyNumber(value - other.value);
  }

  MyNumber operator *(MyNumber other) {
    return MyNumber(value * other.value);
  }

  MyNumber operator /(MyNumber other) {
    if (other.value != 0) {
      return MyNumber(value / other.value);
    } else {
      print('Деление на ноль!');
      return MyNumber(0);
    }
  }

  MyNumber operator %(MyNumber other) {
    return MyNumber(value % other.value);
  }

  void printValue() {
    print('Значение: $value');
  }
}

enum CarState { stop, drive, turn }

class Car {
  CarState state;

  Car() : state = CarState.stop;

  void go() {
    state = CarState.drive;
    print('Машина едет');
  }

  void stop() {
    state = CarState.stop;
    print('Машина остановилась');
  }

  void turn() {
    state = CarState.turn;
    print('Машина поворачивает');
  }

  CarState getState() {
    return state;
  }
}

abstract class GeometricFigure {
  double getArea();
}

class Rectangle extends GeometricFigure {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

class Triangle extends GeometricFigure {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double getArea() {
    return 0.5 * base * height;
  }
}

class Circle extends GeometricFigure {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14159 * radius * radius;
  }
}

class NumberBaseConverter {
  String convert(String number, int fromBase, int toBase) {
    try {
      int decimal = int.parse(number, radix: fromBase);
      String result = decimal.toRadixString(toBase);
      print('$number (основание $fromBase) = $result (основание $toBase)');
      return result;
    } catch (e) {
      print('Ошибка конвертации');
      return '';
    }
  }
}

class FigureCollection {
  List<GeometricFigure> figures = [];

  void add(GeometricFigure figure) {
    figures.add(figure);
  }

  GeometricFigure? findMaxArea() {
    if (figures.isEmpty) {
      print('Нет фигур');
      return null;
    }

    GeometricFigure maxFigure = figures[0];
    for (var figure in figures) {
      if (figure.getArea() > maxFigure.getArea()) {
        maxFigure = figure;
      }
    }
    print('Фигура с максимальной площадью: ${maxFigure.runtimeType}, площадь = ${maxFigure.getArea()}');
    return maxFigure;
  }
}

class Table {
  List<Cutlery> items = [];

  void put(Cutlery item) {
    items.add(item);
    print('Поставлен ${item.name} на стол');
  }

  void remove(Cutlery item) {
    if (items.contains(item)) {
      items.remove(item);
      print('Убран ${item.name} со стола');
    } else {
      print('${item.name} не найден на столе');
    }
  }

  void listItems() {
    print('На столе:');
    for (var item in items) {
      print('- ${item.name}');
    }
  }
}

class Cutlery {
  String name;

  Cutlery(this.name);
}

class Fork extends Cutlery {
  Fork() : super('Вилка');
}

class Spoon extends Cutlery {
  Spoon() : super('Ложка');
}

class Knife extends Cutlery {
  Knife() : super('Нож');
}

void main() {
  print('=== Задача 1 ===');
  Cup cup = Cup();
  Human human = Human('Иван');
  human.drinkFromCup(cup, 0.3);

  print('\n=== Задача 2 ===');
  Cabinet cabinet = Cabinet(2);
  cabinet.putInStorage(0, 'Книга', 'Война и мир');
  cabinet.takeFromStorage(0, 'Книга');

  print('\n=== Задача 3 ===');
  Barbell barbell = Barbell(100);
  barbell.addLeft(BarbellDisc(20));
  barbell.addRight(BarbellDisc(20));
  print('Общий вес: ${barbell.getTotalWeight()} кг');

  print('\n=== Задача 4 ===');
  CurrencyConverter converter = CurrencyConverter();
  converter.convert(100, 'USD', 'EUR');

  print('\n=== Задача 5 ===');
  Garage<String> garage = Garage<String>();
  garage.add('Машина');
  garage.add('Велосипед');
  garage.remove(0);

  print('\n=== Задача 6 ===');
  MyNumber a = MyNumber(10);
  MyNumber b = MyNumber(3);
  (a + b).printValue();
  (a - b).printValue();
  (a * b).printValue();
  (a / b).printValue();

  print('\n=== Задача 7 ===');
  Car car = Car();
  car.go();
  car.turn();
  car.stop();

  print('\n=== Задача 8 ===');
  Rectangle rect = Rectangle(5, 3);
  Triangle tri = Triangle(4, 6);
  Circle circ = Circle(2);
  print('Площадь прямоугольника: ${rect.getArea()}');
  print('Площадь треугольника: ${tri.getArea()}');
  print('Площадь круга: ${circ.getArea()}');

  print('\n=== Задача 9 ===');
  NumberBaseConverter converter2 = NumberBaseConverter();
  converter2.convert('FF', 16, 10);
  converter2.convert('255', 10, 16);
  converter2.convert('377', 8, 10);

  print('\n=== Задача 10 ===');
  FigureCollection collection = FigureCollection();
  collection.add(Rectangle(10, 5));
  collection.add(Circle(3));
  collection.add(Triangle(8, 4));
  collection.findMaxArea();

  print('\n=== Задача 11 ===');
  Table table = Table();
  table.put(Fork());
  table.put(Spoon());
  table.put(Knife());
  table.listItems();
  table.remove(Spoon());
  table.listItems();
}