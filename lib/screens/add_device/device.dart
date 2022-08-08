import 'package:flutter/material.dart';

class DeviceInfo extends StatefulWidget {
  const DeviceInfo({Key? key}) : super(key: key);

  @override
  State<DeviceInfo> createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(.2),
                width: 1,
              ),
            ),
            child: ListTile(
              title: Text("Switch"),
              subtitle: Text("two sockets with two buttons"),
              trailing: Icon(Icons.add),
              leading: Image.network(
                  "https://th.bing.com/th/id/R.cd37c707f3b755f2f4f56b34f9251b34?rik=rCgctyQvX%2bnzYQ&pid=ImgRaw&r=0&sres=1&sresct=1"),
            )),
      ],
    );
  }
}
