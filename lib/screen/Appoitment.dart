import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//enum serviceGroup { homeservice, shopservice }

class Appoitnmentstatus extends StatefulWidget {
  const Appoitnmentstatus({Key? key}) : super(key: key);

  @override
  State<Appoitnmentstatus> createState() => _AppoitnmentstatusState();
}

class _AppoitnmentstatusState extends State<Appoitnmentstatus> {
  String level = "Shopservice";
  TimeOfDay currentTime = TimeOfDay.now();
  DateTime currentDate = DateTime.now();
  bool _isTimeSelected = false;
  bool _isDateSelected = false;

  var pickedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEFF0F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFfa8919),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Appointments",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.timer),
                trailing: Icon(Icons.edit),
                title: _isTimeSelected
                    ? Text('${currentTime.format(context).toString()}')
                    : Text("Select your Time"),
                onTap: () {
                  _selectTime(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_today),
                trailing: Icon(Icons.edit),
                title: _isDateSelected
                    ? Text(DateFormat('EEE, M/d/y').format(currentDate))
                    : Text("Select your Date"),
                onTap: () {
                  _selectDate(context);
                },
              ),
            ),
          ],
        ),

        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                    value: "HomeService",
                    groupValue: level,
                    onChanged: (value) {
                      setState(() {
                        level = value.toString();
                      });
                    }),
                SizedBox(
                  width: 10.0,
                ),
                Text("Home Service"),
                Radio(
                    value: "ShopService",
                    groupValue: level,
                    onChanged: (value) {
                      setState(() {
                        level = value.toString();
                      });
                    }),
                SizedBox(
                  width: 10.0,
                ),
                Text("Shop Service"),*/
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: currentTime,
      initialEntryMode: TimePickerEntryMode.dial,
      helpText: 'Choose your Time',
      confirmText: 'Choose now',
      cancelText: 'Later',
    );
    if (pickedTime != null && pickedTime != currentTime) {
      setState(() {
        currentTime = pickedTime;
        _isTimeSelected = true;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 1, 1),
      //initialEntryMode: TimePickerEntryMode.dial,
      helpText: 'Choose your Date',
      confirmText: 'Choose now',
      cancelText: 'Later',
    );
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
        _isDateSelected = true;
      });
    }
  }
}
