import 'dart:io';

// late String surname;
// final b4 = 7;
void main() {
  // surname = 'fefef';
  // print(4.compareTo(5));//-1 4<5
  // print(5.compareTo(4));//1 5<4
  // print(4.compareTo(4));//0 4==4

  // print((-5).abs());//5
  // print(5.6.round());//6
  // print(5.4.round());

  // print(5.4.ceil());//6
  // print(5.5.floor());//5


  // print(6.isEven);//чет
  // print(5.isOdd);//нечет

  // print(5.toRadixString(2));
  // print(16.toRadixString(16));
  // print(5.toRadixString(8));
  // print(5.toRadixString(10));

  // print(3.bitLength);

  // print(30.gcd(12));  print(a+b);

  // int a = 5;
  // int b = 6;

  // print(a+b);
  // print(a-b);
  // print(a*b);
  // print(a/b);
  // print(a~/b); //целочисленное деление
  // print(a%b); 

  // print(a++); 
  // print(++a);

  // print(b--);
  // print(--b);

  // print(a<b);
  // print(a<=b);
  // print(a>b);
  // print(a>=b);

  // bool c=(5>4) && (5==5);
  // bool c1 = (5>4) || (5==5);
  // bool c2 =!(5>4);

  // print(c);
  // print(c1);
  // print(c2);

  // int z = 5;
  // print(z+=5);
  // print(z-=5);

  // String name = "d";
  // int age = 3;

  // print(name);
  // print(age);

  // stdout.write("eeere");
  // stdout.write("\n");
  // stdout.write("sde");
  // stdout.write("\n");

  //String? name1 = stdin.readLineSync(); //возвращает строку с нулевым значемнием

  // String name1 = stdin.readLineSync()!;
  // String age1 = stdin.readLineSync()!;
  // int parage1 = int.parse(age1);

  // print("имя $name1, ${parage1+5}");

  // final a1 = 5;
  // final a1;
  // a1 = 5;
  // const pi = 3.14;

  // late String name;
  // name = "ee";

  // var value = "12345";
  // var valueToInt = int.parse(value);
  // var valueToDouble = double.parse(value);
  // print(value);
  // print(valueToInt);
  // print(valueToDouble);

  // int? j = int.tryParse("45trt");
  // double? k = double.tryParse("567");

  // print(j);
  // print(k);

  // print(value is! String);


  //1
  // String s = 'программирование на dart';
  // print(s.length);
  
  //2
  // String word = "Dart";
  // print(word[0]);
  // print(word[3]);

  //3
  // String www = 'Я изучаю Java';
  // print (www.replaceAll("Java", "Dart"));

  //4
  // String s9 = "  Dart  ";
  // print(s9.trim());

  //5
  // String w = 'Быстрый коричневый лис';
  // String ww = 'коричневый';

  //6
  // int pos = w.indexOf(ww);
  // print(pos);

  //7
  // String s = '42';
  // print(s.padLeft(5, "0"));

  //8
  // String s = 'hello';
  // String s2 = 'world';

  // print(s + " " + s2);

  //9
  // String s = 'hello';
  // print(s.isEmpty);

  // String s = '12345';
  // print(s is int);

  //10
  // String s = "Hello123World456";
  // print(s.replaceAll(RegExp(r'[0-6]'), ''));

  //11
  // String s = 'программирование';
  // print(s.length - s.replaceAll('а', '').length);

  //12
  // String a = 'кот и кот и еще один кот';
  // print(a.indexOf('кот'));
  // print(a.lastIndexOf('кот'));
  // print(a.indexOf('кот', 6));

  //13
  //   String s = "apple";
  //   String s2 = 'Apple';
  //   print(s.compareTo(s2));

  //14
  // String s = "Dart - это круто";
  // print(s.split(' ').length);

  //16
  // String number = '+71111111111';
  // bool a = number.length == 11;
  // print(number.startsWith("+7"));


// List<int> d = [1,4,6];
// List<String> d1 =["d","a"];
// List<dynamic> d3 =["d","a",1,3];


// List<int?> g=List.filled(5, null);
// print(g);

// List<int?> g1=List.generate(3,(int x) => x*x);
// print(g1);

// List<int> g2=[1,3,4];
// List<int> a=List.from(g2);
// print(a);

// const List<int> f=[1,34]; // неизменяемое
// final a1=[3,4]; //неизменяемое

// List<int> d4=[1,4,6];
// print(d4[0]);
// print (d4[2]);

// print(d.first);
// print(d.last);

// print(d.length);
// print(d.isEmpty);
// print(d.isNotEmpty);
// print(d.reversed);
// //print(d.single);
// d.add(4);
// d.addAll([2,4,5]);
// print(d);

// print(d.remove(1));
// print(d);

// d.insert(1,10);
// print(d);

// d.insertAll(1,[3,4,5]);
// print(d);


// d.removeAt(1);
// print(d);

// d.removeLast();
// print (d);
// d.removeRange(1,4);
// print(d);
// List<int> e=[1,4,6,5,8];
// e.removeWhere((item)=> item %2==0);
// print(e);

// e.clear();
// print(e);

// List<int>e1=[1,4,6,5,8];
// e1[3]=6;
// print(e1);

// e1.fillRange(1,3,0);
// print(e1);

// e1.replaceRange(1,3,[5,7]);
// print(e1);

// List<int> e2=[1,4,6,5,8];
// print(e2.indexOf(4));
// print(e2.lastIndexOf(8));
// print(e2.indexOf(-1));

// print(e2.contains(-1));
// print(e2.any((x)=> x>2));
// print(e2.every((x)=> x>=1));



// print(e2.firstWhere((x)=> x>=1)); //проверяет первый и последний элемент, если истино возвращает значение.
// print(e2.lastWhere((x)=> x>=1));

// //срезы, позволяют получать часть списка...
// List<int> e4=[1,4,6,5,8];
// print(e4.sublist(1,4));

// print(e4.sublist(1));

// List<int> e6=[1,10,16,5,6];
// List<int> d5=[...e6,3,4,5];
// print(d5);


// //sortirovka

// e6.sort();
// print(e6);


// List<String> v=["Длинное слово","очень очень очень длинное слово","слово","очень очень чоень длинное слово"];
// v.sort((a,b)=>a.length.compareTo(b.length));
// print(v);

// List<int> r=[1,2,3,4,5];
// var q=r.map((x)=> x*2);
// print(q);


// var c=r.where((x)=> x>4).toList();
// print(c);

// var w1=r.skip(2);
// print(w1);

// var w3=r.take(4);
// print(w3);

// final numbers = <double>[10,2,5,0.5];
// final result =numbers.reduce((value, element) => value + element);
// print (result);


// //1
// List <String> fruit=["яблоко"];
// print(fruit);

// //2
// List <int> number=List.generate(5, (int x)=> x+1);
// print(number);

// //3
// List <String> items=["груша"];
// print(items.length);

// //4
// List <String> d67=["первый","второй","третий"];
// print(d67[0]);
// print(d67.last);

// //5
// List<int> n8=[10,20,30,40,50];
// n8.remove(30);
// n8.removeLast();
// print(n8);

// //6
// List<int> num=[5,10,15,20,25];
// int n=num.reduce((x,y)=> x+y);
// print(n);

// 

// Set <int> d={1,2,3};

// print(d.first);
// print(d.last);

// d.add(4);
// d.addAll({5,6});
// print (d);

// print (d.remove({5}));
// print (d.remove({10}));
// print(d);

// d.removeAll({4});
// print(d);

// Set <int?> sl={1,null};
//  sl={1,2,3};

//  Set<int>? s3;
//  s3={};

// d.removeWhere((element) => element%2!=0);

// print(d.contains(2)); // ищет элементы
// print(d);
// print(d.containsAll({2,10}));
// print(d);

// Set<int> d1={1,2,3};
// Set <int> d2={3,4,5};

// print (d1.union(d2)); // обьединяет множества 

// print(d1.intersection(d2)); // пересечение

// print(d1.difference(d2)); // разность

// print(d1.union(d2).difference(d1.intersection(d2))); // симметрическая разность


// print(d1.map((e)=> e*2));

// Set<int> f=Set.from(d1.map((e)=> e*3));
// print(f);

// Set<int> d7={1,2,3,4,5,5,5};
// print(d7.toSet().toList()); //в список множество //когла ты обращаешься к списку множество игнорирует, удаляет дубликаты

// Set <int> small ={1,2};
// Set <int> big={1,2,3,4,5};

// print(small.every((x)=>big.contains(x)));

//Циклы

// for(инициализация;условие;изменение(увелисение;) {
// тело цикла}

// for (int i=1;i<=5;i++) {

// print(i);

// }

// for (int i=5;i>=1;i--) {
//   print(i);
// }

// for(int i=2; i<=20; i+=2) {
//   print(i);
// }

// for(int i=1; i<=5; i++) {
//   for(int j=1;j<=5; j++) {
//     int a=i*j;
//     print("${i} * ${j} = ${a}");
//   }
// }

// int sum=0;
// for (int i=1; i<=5; sum+=i, i++); 
//   print(sum);

// //for (тип и переменная in коллекция, для перебора коллекции){
// //}

// List <int> s=[1,2,3,4];
// for(var i in s) {
//   print(i);
// }

// for (int i=1; i<=s.length; i++) {
//   print(i);

// }

// List <String> d=["первый", "второй"];
// for (var u in d) {
//  print(u);
// }

// // for (int i=0; i<=d.length; i++) {
// //   print(i);
// //   print(d);
// // }

// Set <String> set={"первый", "второй"};
// Map <String,int> map={};
// for (var y in set) {
//    map[y]=y.length;
//    print("Множество $y");
// }
// print(map);
// // for (var y in set.as) {

// // }
// for (var i in d.asMap().entries) { //
//   print ("${i.key}, ${i.value}");
// }

// String e="Dart";
// for(var i in e.split(" ")) {
//   print (i);
// }

// for (var i in e.runes) {
//   print(String.fromCharCode(i));
// }

// // while(условие) {
//   //тело цикла
// //}

// int i=1;
// while (i<=5) {
//   print(i);
//   break;

// }int y=1000;
// while (i>0) {
//   print(y);
//   y~/=2; 
// }

// // while(true) {
// //   print ("бесконечный цикл");
// //   break;
// // }

// //do-while
// int x=1;
// do {
//   print(x);
//   x++;
// } while (x<=5);

// List<int> d1 = [1, 2 ,3, 4];
//     d1.forEach((a){ //
//         if(a==3){
//             return;
//         }
//         print(a);
//     });

// for(var h in d1){
//         if(h==3){
//             continue;
//         }
//         print(h);
//     }

// Map <String, int> map={"Иван": 34};
// // map["n"]=7.9;
// Map <int,int> map1={1:1};

// var map3={"яблоко":4};
// print(map3);

// Map<String,int> map4=Map.from(map);
// print(map4);

// var s={}; //если пустой то определит как динмаичесикй

// Map<String,num> f=Map.of(map4);
// print(f);
// f["g"]=6.7;
// print(f);

// f.addAll({"h":7,"k":6});
// print(f);

// f["g"]=90;
// print(f); //добаввление

// print(f.remove("h")); //удаление
// print(f);

// f.removeWhere((key,value)=>value==7);
// print(f);

// f.putIfAbsent("l", ()=>100);
// print(f);

// f.putIfAbsent("g", ()=>100);
// print(f);

// f.update("l",(x)=>x*2);
// print(f);

// f.updateAll((key,value)=>value+4);

// Map<int,int> map7=Map.unmodifiable(map);
// print(map7);
// map7[2]=2;
// print(  map7);


// print(f.containsKey("Иван"));
// print(f.containsValue(90));

// print(f.entries);
// print(f.values);
// print(f.keys);
// print(f.length);

// for(var i in f.entries) {
//   print(i);
// }

// for(var i in f.values) {
//   print(i);
// }

// for(var i in f.keys) {
//   print(i);
// }




// List <String> names=["jdjcc", 'chcbccb', 'dhhch'];

// Map<String,int> nameLen=Map.fromIterable(names,

//   key:(element)=>element,
//   value: (element) =>(element as String).length,


// );

// print(nameLen);



// var a=[
//   MapEntry(4, 5),
//   MapEntry(4, 8),

// ];

// Map <int, int> mapA=Map.fromEntries(a);
// print(mapA);


// final s1={"d":1};
// final s2={"d":3};

// s1.addEntries(s2.entries);
// print(s1);

// // Map<int, int> mapA = Map.fromEntries(a);
// //   print(mapA);

//   final f1={"d":1};
//   final f2={"f":3};

//   f1.addEntries(f2.entries);
//   print(s1);

 

// List<Map<String,int>> listMap=[{}];

// Map<String,String> conf={
//   "theme":"dark"
// };

// String theme=conf["theme"] ?? "blue";
// String language=conf ["languge"] ?? "русский";
// print (language);
// print(theme);

// Map<int,List< String>> mapToList={
//   1:["h"]
// };


   var person=("Tonya",45);
   print(person); //кортежи типизированные, позиционнные, именнованные и невидимые
  (String,int) person1=("Tonya",45);
  print (person1);

  (String,int,String) person2=("Tonya",6,"Веселая");
  print (person2);

  print(person1.$1); //нумерация с 1
  print(person1.$2);

void main(){
  var person = ("Monya", 45);
  print(person);

  (String, int) person2 = ("Monya", 45);
  print(person2);

  (String, int, String) person3 = ("Monya", 45, "Веселая");
  print(person3);

  print(person2.$1);
  print(person2.$2);

  var person4 = (name:"Nastya", age:23);
  print(person4.name);
  print(person4.age);

  ({int age, String name}) person5 = (name:"Nastya", age:45);


  var person6 = ("Nastya", age: 23);
  print(person6.$1); 
  print(person6.age); 


  var person7 = retingNameAge();
  print(person7);

  var person8 = retingNameAge2();
  print(person8);

  voidNameAge((age:6, name: "вауауцуасуцвау"));
}

(String, int) retingNameAge(){
  return("Nastya", 45);
}

({String name, int age}) retingNameAge2(){
  return(name:"Nastya", age:45);
}

void voidNameAge(({String? name, int? age}) v){
  print(v.name);
  print(v.age);
}

void main(){
  List<int> list = [1, 2, 3];
  Iterable iy = list;
  for(var i in iy){
    print(i);
  }

  List<int> d = [1, 2, 3];
  print(d.where((d)=> d>=2));
  print(d.reduce((a, b)=> a+b));
  print(d.map((e) => e*2));
  print(d);

  var s = [1, 1, 2, 4, 5, 6]
  .take(4)
  .skip(3)
  .fold(2, (x,y)=>x*y);

  print(s);

  print(iterab(6, 8));
}

Iterable<int> iterab(int start, int end) sync*{
  int i = start;
  while(i<end){
    yield i;
    i++;
  }
}


}