import 'package:flutter/material.dart';
import '/screens/add_device/add_device.dart';

class FirstDevice extends StatefulWidget {
  const FirstDevice({Key? key}) : super(key: key);

  @override
  State<FirstDevice> createState() => _FirstDeviceState();
}

class _FirstDeviceState extends State<FirstDevice> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add dvices"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: ElevatedButton(
          child: Text("add device"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DeviceAdd();
            }));
          },
        ),
      )),
    );
  }
}
