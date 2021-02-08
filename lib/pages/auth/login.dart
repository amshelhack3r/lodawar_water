import 'package:flutter/material.dart';
import 'package:lodwar_water/util/constants.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Theme.of(context).accentColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/aquabill_logo.png",
                        width: 200,
                        height: 200,
                      ),
                      Text(APP_NAME,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      hintText: "username",
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue),
                    maxLength: 4,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "password",
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                ),
                RaisedButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/WelcomePage', (route) => true),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
