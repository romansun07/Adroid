// ignore_for_file: unnecessary_null_comparison, empty_statements

import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'student_mark_box.dart';

import 'dart:io';

enum Gender { male, female }

class StudentInfoPage extends StatefulWidget {
  const StudentInfoPage({super.key});

  @override
  State<StudentInfoPage> createState() => _StudentInfoPageState();
}

class _StudentInfoPageState extends State<StudentInfoPage> {
  Gender _gender = Gender.male;

  late String _selectedSubject;
  late double _mark;

  final List<String> _subjects = [
    'Math',
    'Science',
    'English',
    'History',
    'Art',
  ];

  String? get value => null;

  // late DateTime _selectedDate;

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime.now(),
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  //   }
  // }

  //final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff0C1B3E),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text('Student ID:'),
          leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Student Id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.numbers),
                  hintText: '123',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'e.g. Roman',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.home),
                  hintText: 'e.g. House No',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Sex:',
              ),

              RadioListTile<Gender>(
                title: const Text('Male'),
                value: Gender.male,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              RadioListTile<Gender>(
                title: const Text('Female'),
                value: Gender.female,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),

              const SizedBox(
                height: 25,
              ),

// DateTimeField(
//   controller: _dateController,
//   decoration: const InputDecoration(labelText: 'Date of birth'),
//   format: DateFormat('yyyy-MM-dd'),
//   onShowPicker: (context, currentValue) async {
//     final date = await showDatePicker(
//         context: context,
//         firstDate: DateTime(1900),
//         initialDate: currentValue,
//         lastDate: DateTime.now());
//     if (date != null) {
//       _dateController.text = DateFormat('yyyy-MM-dd').format(date);
//       return date;
//     } else {
//       return currentValue;
//     }
//   },
// ),

              const Text('DoB:'),
              const SizedBox(
                height: 40,
              ),

              const Text('Photo:'),
              const SizedBox(
                height: 40,
              ),

              const Text('Obtained Mark'),

              const SizedBox(
                height: 40,
              ),
              // const Text('Select a subject:'),
              // DropdownButton<String>(
              //   value: _selectedSubject,
              //   onChanged: (String newValue) {
              //     {
              //           _mark = double.parse(value!);
              //         },);
              //   },
              //   items: _subjects
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              // ),
              // const SizedBox(height: 16.0),
              // const Text('Enter the mark:'),
              // TextField(
              //   keyboardType: TextInputType.number,
              //   onChanged: (value) {
              //     setState(() {
              //       _mark = double.tryParse(value) ?? 0.0;
              //     });
              //   },
              // ),
              // const SizedBox(height: 16.0),
              // ElevatedButton(
              //   onPressed: _selectedSubject != null && _mark != null
              //       ? () {
              //           // Do something with the selected subject and mark
              //         }
              //       : null,
              //   child: const Text('Save'),
              // ),

              Center(
                child: SizedBox(
                  width: 450,
                  child: Table(
                    border: TableBorder.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    children: const [
                      TableRow(
                        children: [
                          TableCell(
                            child: Text(
                              'Subject',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child: Text(
                              'Mark',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Text(''),
                          ),
                          TableCell(
                            child: Text(''),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Text(''),
                          ),
                          TableCell(
                            child: Text(''),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Text(''),
                          ),
                          TableCell(
                            child: Text(''),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    width: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 92, 0, 220),
                            Color.fromARGB(255, 0, 111, 201),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 72, 214, 136),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 92, 0, 220),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(-2, -2),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Save',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 92, 0, 220),
                            Color.fromARGB(255, 0, 111, 201),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 72, 214, 136),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 92, 0, 220),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(-2, -2),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Update',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 92, 0, 220),
                            Color.fromARGB(255, 0, 111, 201),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 72, 214, 136),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                          BoxShadow(
                            color: Color.fromARGB(255, 92, 0, 220),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(-2, -2),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Delete',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
