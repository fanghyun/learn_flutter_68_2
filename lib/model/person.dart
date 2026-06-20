import 'package:flutter/material.dart';

enum Job {
  developer(
    title:"นักพัฒนา",
    description: "ทำงานเกี่ยวกับการเขียนโปรแกรมและพัฒนาแอปพลิเคชัน",
    image: "assets/images/daisy-9.webp",
    color: Colors.blue,
  ),
  designer(
    title:"นักออกแบบ",
    description: "ทำงานเกี่ยวกับการออกแบบกราฟิกและประสบการณ์ผู้ใช้",
    image: "assets/images/daisy-9.webp",
    color: Colors.green,
  ),
  manager(
    title:"ผู้จัดการ",
    description: "ทำงานเกี่ยวกับการบริหารจัดการทีมและโครงการ",
    image: "assets/images/daisy-9.webp",
    color: Colors.orange,
  ),
  businessman(
    title:"นักธุรกิจ",
    description: "ทำงานเกี่ยวกับการบริหารธุรกิจและการตลาด",
    image: "assets/images/daisy-9.webp",
    color: Colors.purple,
  ),
  student(
    title:"นักศึกษา",
    description: "ทำงานเกี่ยวกับการเรียนและการศึกษา",
    image: "assets/images/daisy-9.webp",
    color: Colors.red,
  );

  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  final String title;
  final String description;
  final String image;
  final Color color;
}


class Person {
  String name;
  int age;
  Job job;
 
  // Constructor
  //Const Person({required this.name, required this.age, required this.job});
  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: Job.developer),
  Person(name: "สมศรี", age: 28, job: Job.designer),
  Person(name: "สมปอง", age: 35, job: Job.manager),
  Person(name: "สมหมาย", age: 40, job: Job.businessman),
  Person(name: "สมจิตร", age: 25, job: Job.student),
];
