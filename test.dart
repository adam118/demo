import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

int? _groupValue;

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("demo radio button"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Guiss the answer 2 + 2 = ?"),
          ),
          RadioListTile(
            value: 3,
            groupValue: _groupValue,
            title: Text("3"),
            onChanged: (int? val) {
              setState(() {
                _groupValue = val;
              });
            },
          ),
          RadioListTile(
            value: 4,
            groupValue: _groupValue,
            title: Text("4"),
            onChanged: (int? val) {
              setState(() {
                _groupValue = val;
              });
            },
          ),
          RadioListTile(
            value: 5,
            groupValue: _groupValue,
            title: Text("5"),
            onChanged: (int? val) {
              setState(() {
                _groupValue = val;
              });
            },
          ),
          Text("$_groupValue"),
        ],
      ),
    );
  }
}
