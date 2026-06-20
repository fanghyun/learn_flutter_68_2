import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: const Color.fromARGB(255, 255, 154, 188),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name")),
              TextField(
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: "Job"),
                items: Job.values.map((job) {
                  return DropdownMenuItem(value: job, child: Text(job.title));
                }).toList(),
                onChanged: (value){
                  print("Selected Job: ${value?.title}");
                },
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: (){
                  //Handle form submission
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 154, 188),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
                child: Text(
                  "Submit", 
                  style: TextStyle(color: Colors.white, fontSize: 20)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}