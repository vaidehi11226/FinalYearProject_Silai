// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:silaiproject/admin_screen/AfterMesurements/Bill.dart';
import 'package:silaiproject/admin_screen/AfterMesurements/Payment.dart';

class measurements extends StatefulWidget {
  const measurements({Key? key}) : super(key: key);

  @override
  State<measurements> createState() => _measurementsState();
}

class _measurementsState extends State<measurements> {
  String level = "cm";
  String? dropdownvalue;
  List<String> cloth = [
    'Blouse',
    'Suit',
    'Gaon',
    'Burkha',
    'Poshak',
    'ChaniyaCholi',
    'Paticoat',
    'Kurti',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFfa8919),
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Measurements",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      radioMesure(),
                      // clothes(),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Neck :                     ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Shoulder width :    ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "         Armhole Depth :     ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Elbow :                    ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Wrist :                     ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Arm Length :        ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Bust/Chest :        ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Waist :                   ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Hip :                       ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Front Waist :         ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "          Back Waist :         ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 150,
                              height: 20,
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Save(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*Widget clothes() {
    return Row(
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton2(
            hint: Text(
              'Select Your Stich',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            dropdownWidth: 150,
            items: cloth
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: dropdownvalue,
            onChanged: (value) {
              setState(() {
                dropdownvalue = value as String;
              });
            },
            buttonHeight: 20,
            buttonWidth: 100,
            itemHeight: 20,
          ),
        ),
        Text("data")
      ],
    );

    Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: DropdownButton(
              // Initial Value
              value: dropdownvalue,
              style: const TextStyle(color: Colors.white),
              underline: Container(),
              borderRadius: BorderRadius.circular(5),
              isExpanded: true,
              dropdownColor: Colors.black,
              // Down Arrow Icon

              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: cloth.map((String cloth) {
                return DropdownMenuItem(
                  value: cloth,
                  child: Text(cloth),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }*/

  Widget radioMesure() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 1,
        ),
        Text(
          "         Mesurement in:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Text("         Inches"),
            Radio(
                value: "Inches",
                groupValue: level,
                onChanged: (value) {
                  setState(() {
                    level = value.toString();
                  });
                }),
            SizedBox(
              width: 10.0,
            ),
            Text("cm"),
            Radio(
                value: "cm",
                groupValue: level,
                onChanged: (value) {
                  setState(() {
                    level = value.toString();
                  });
                }),
          ],
        ),
      ],
    );
  }

  Widget Save() {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(25),
      color: Color(0xFFfa8919),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => payment()));
        },
        child: Text(
          "Save",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
