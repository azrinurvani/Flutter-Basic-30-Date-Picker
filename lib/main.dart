import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tanggal Terpilih : $selectDate",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  // initialEntryMode: DatePickerEntryMode.calendar,
                  // initialDatePickerMode: DatePickerMode.day,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(DateTime.now()
                  //           .subtract(const Duration(days: 6)))) &&
                  //       (day.isBefore(
                  //           DateTime.now().add(const Duration(days: 2))))) {
                  //     return true;
                  //   }
                  //   return false;
                  // },
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldHintText: "Field Hint Text",
                  fieldLabelText: "Field Label Text",
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectDate = value;
                    });
                  }
                });
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
