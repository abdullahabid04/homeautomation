import 'package:flutter/material.dart';
import '/screens/login/login.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final verifycontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Verify Account"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Text("Enter verification code"),
              Container(
                height: size.height * 0.1,
              ),
              Container(
                width: size.width * 0.3,
                child: Container(
                  width: size.width * 0.3,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: verifycontroller,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text("verify")),
            ],
          ),
        ));
  }
}
