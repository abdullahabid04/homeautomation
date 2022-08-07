import 'package:flutter/material.dart';
import '/screens/login/login.dart';
import '/Screens/Signup/components/background.dart';
import '/Screens/Signup/components/or_divider.dart';
import '/Screens/Signup/components/social_icon.dart';
import '/components/already_have_an_account_acheck.dart';
import '/components/rounded_button.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool hidePassword = true;
  bool hideconfirmpassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final first_name = TextEditingController();
  final last_name = TextEditingController();
  final mobile_no = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirm_password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      key: scaffoldKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin:
                      const EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColorLight,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).hintColor.withOpacity(0.2),
                          offset: const Offset(0, 10),
                          blurRadius: 20)
                    ],
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 25),
                        Text(
                          "SignUp",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: first_name,
                          keyboardType: TextInputType.name,
                          // onSaved: (input) => signUpRequest.firstName = input,
                          validator: (input) => input!.length < 4
                              ? "First Name must be greater than 4 letters"
                              : null,
                          decoration: InputDecoration(
                            hintText: "First Name",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: last_name,
                          keyboardType: TextInputType.name,
                          // onSaved: (input) => signUpRequest.lastName = input,
                          validator: (input) => input!.length < 4
                              ? "Last Name must be greater than 4 letters"
                              : null,
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          // onSaved: (input) => signUpRequest.eMail = input,
                          validator: (input) => !input!.contains('@')
                              ? "Please enter a valid email address"
                              : null,
                          decoration: InputDecoration(
                            hintText: "E-mail Address",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: mobile_no,
                          keyboardType: TextInputType.phone,
                          // onSaved: (input) => signUpRequest.mobileNo = input,
                          validator: (input) => input!.length < 11
                              ? "Please enter a valid mobile phone number"
                              : null,
                          decoration: InputDecoration(
                            hintText: "Mobile Phone No.",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: password,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                          keyboardType: TextInputType.text,
                          // onSaved: (input) => signUpRequest.password = input,
                          validator: (input) => input!.length < 8
                              ? "Password should be more than 8 characters"
                              : null,
                          obscureText: hidePassword,
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.4),
                              icon: Icon(hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: confirm_password,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                          keyboardType: TextInputType.text,
                          // onSaved: (input) =>
                          // signUpRequest.confirmPassword = input,
                          validator: (input) => input!.length < 8
                              ? "Password should be more than 8 characters"
                              : null,
                          obscureText: hideconfirmpassword,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).accentColor)),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hideconfirmpassword = !hideconfirmpassword;
                                });
                              },
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.4),
                              icon: Icon(hideconfirmpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        FlatButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 80),
                          onPressed: () {},
                          child: const Text(
                            "SignUp",
                            style: const TextStyle(color: Colors.white),
                          ),
                          color: Theme.of(context).accentColor,
                          shape: const StadiumBorder(),
                        ),
                        const SizedBox(height: 30),
                        AlreadyHaveAnAccountCheck(
                            login: false,
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreen();
                                  },
                                ),
                              );
                            }),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
