import 'package:flutter/material.dart';
import '/screens/add_device/device.dart';

class DeviceAdd extends StatefulWidget {
  const DeviceAdd({Key? key}) : super(key: key);

  @override
  State<DeviceAdd> createState() => _DeviceAddState();
}

class _DeviceAddState extends State<DeviceAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add device"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo(),
              DeviceInfo()
            ],
          )),
    );
  }
}
