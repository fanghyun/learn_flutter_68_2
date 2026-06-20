import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:learn_flutter_68_2/model/person.dart';

import 'package:learn_flutter_68_2/screen/addForm.dart';

//import 'packege:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: people.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         color:people[index].job.color,
    //       ),
    //       margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       padding: const EdgeInsets.all(40),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "ชื่อ: ${people[index].name}",
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.bold),
    //               ),
    //               Text(
    //                 "อายุ: ${people[index].age}",
    //                 style: GoogleFonts.kanit(fontSize: 16),
    //               ),
    //               Text(
    //                 "อาชีพ: ${people[index].job.title}",
    //                 style: GoogleFonts.kanit(fontSize: 16),
    //               ),
    //             ],
    //           ),
    //           Image.asset(
    //             people[index].job.image,
    //             width: 50,
    //             height: 50,
    //             fit: BoxFit.cover,
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 247, 134, 196),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: people[index].job.color,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ชื่อ: ${people[index].name}",
                          style: GoogleFonts.kanit(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "อายุ: ${people[index].age}",
                          style: GoogleFonts.kanit(fontSize: 16),
                        ),
                        Text(
                          "อาชีพ: ${people[index].job.title}",
                          style: GoogleFonts.kanit(fontSize: 18),
                        ),
                      ],
                    ),
                    Image.asset(people[index].job.image, width: 80, height: 80),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 167, 162, 255)),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddForm();
                    },
                  ),
                );
              },
              icon: Icon(Icons.add, size: 30, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
