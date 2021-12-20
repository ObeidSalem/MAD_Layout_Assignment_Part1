// Create a Grid Layout of IoT (Internet of Things) devices in a particular house.
// Keep it simple to just 4-6 devices.
// Each device will have an icon on its own.
// When you press the icon, toggle the image and toggle the text underneath between on and off.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<bool> device1 = [false];
  List<bool> device2 = [false];
  List<bool> device3 = [false];
  List<bool> device4 = [false];
  List<bool> device5 = [false];
  List<bool> device6 = [false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IoT App - Obeid"),
        ),
        body: Container(
        color: Colors.grey[100] ,
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),

        child: GridView.count(
          childAspectRatio: (140 / 100),
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                   BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                 ],
                ),
                child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    device1[0] ? Icon(
                      Icons.iron,
                      color: Colors.blue,
                      size: 40,
                    ):
                    Icon(
                      Icons.iron,
                      color: Colors.grey,
                      size: 40,
                    ),
                    ToggleButtons(
                      children: const <Widget>[
                        Icon(Icons.power_settings_new),
                      ],
                      isSelected: device1,
                      color: Colors.grey,
                      selectedColor: Colors.green,
                      fillColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      selectedBorderColor: Colors.green,
                      onPressed: (int index) {
                        setState(() {
                          device1[index] = !device1[index];
                        });
                      },
                    ),
                  ]),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Iron Machine",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: device1[0] ? Text(
                          "On",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.green),
                        ): Text(
                          "Off",
                          textAlign: TextAlign.left,
                        ),
                      ),
                  ]),
                ],
              ),
            ),





            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        device2[0] ? Icon(
                          Icons.tv,
                          color: Colors.blue,
                          size: 40,
                        ):
                        Icon(
                          Icons.tv,
                          color: Colors.grey,
                          size: 40,
                        ),
                        ToggleButtons(
                          children: const <Widget>[
                            Icon(Icons.power_settings_new),
                          ],
                          isSelected: device2,
                          color: Colors.grey,
                          selectedColor: Colors.green,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          selectedBorderColor: Colors.green,
                          onPressed: (int index) {
                            setState(() {
                              device2[index] = !device2[index];
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Television",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: device2[0] ? Text(
                            "On",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.green),
                          ): Text(
                            "Off",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                ],
              ),
            ),




            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        device3[0] ? Icon(
                          Icons.computer,
                          color: Colors.blue,
                          size: 40,
                        ):
                        Icon(
                          Icons.computer,
                          color: Colors.grey,
                          size: 40,
                        ),
                        ToggleButtons(
                          children: const <Widget>[
                            Icon(Icons.power_settings_new),
                          ],
                          isSelected: device3,
                          color: Colors.grey,
                          selectedColor: Colors.green,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          selectedBorderColor: Colors.green,
                          onPressed: (int index) {
                            setState(() {
                              device3[index] = !device3[index];
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Computer",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: device3[0] ? Text(
                            "On",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.green),
                          ): Text(
                            "Off",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                ],
              ),
            ),



            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        device4[0] ? Icon(
                          Icons.desktop_windows,
                          color: Colors.blue,
                          size: 40,
                        ):
                        Icon(
                          Icons.desktop_windows,
                          color: Colors.grey,
                          size: 40,
                        ),
                        ToggleButtons(
                          children: const <Widget>[
                            Icon(Icons.power_settings_new),
                          ],
                          isSelected: device4,
                          color: Colors.grey,
                          selectedColor: Colors.green,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          selectedBorderColor: Colors.green,
                          onPressed: (int index) {
                            setState(() {
                              device4[index] = !device4[index];
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Desktop Computer",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: device4[0] ? Text(
                            "On",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.green),
                          ): Text(
                            "Off",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                ],
              ),
            ),



            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        device5[0] ? Icon(
                          Icons.sports_esports,
                          color: Colors.blue,
                          size: 40,
                        ):
                        Icon(
                          Icons.sports_esports,
                          color: Colors.grey,
                          size: 40,
                        ),
                        ToggleButtons(
                          children: const <Widget>[
                            Icon(Icons.power_settings_new),
                          ],
                          isSelected: device5,
                          color: Colors.grey,
                          selectedColor: Colors.green,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          selectedBorderColor: Colors.green,
                          onPressed: (int index) {
                            setState(() {
                              device5[index] = !device5[index];
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Playstation 5",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: device5[0] ? Text(
                            "On",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.green),
                          ): Text(
                            "Off",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                ],
              ),
            ),



            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        device6[0] ? Icon(
                          Icons.ac_unit,
                          color: Colors.blue,
                          size: 40,
                        ):
                        Icon(
                          Icons.ac_unit,
                          color: Colors.grey,
                          size: 40,
                        ),
                        ToggleButtons(
                          children: const <Widget>[
                            Icon(Icons.power_settings_new),
                          ],
                          isSelected: device6,
                          color: Colors.grey,
                          selectedColor: Colors.green,
                          fillColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          selectedBorderColor: Colors.green,
                          onPressed: (int index) {
                            setState(() {
                              device6[index] = !device6[index];
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Air Condition",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: device6[0] ? Text(
                          "On",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.green),
                        ): Text(
                          "Off",
                          textAlign: TextAlign.left,
                        ),
                      ),
                  ]),
                ],
              ),
            ),
          ]),
          ),
        ),
    );
  }
}
