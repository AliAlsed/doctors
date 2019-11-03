import 'package:doctors/models/user.dart';
import 'package:doctors/widgets/input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  User user;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 150),
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            CustomInput(
              customController: emailController,
              validation: (String v) {
                if (v.trim().isEmpty || !v.contains('@')) {
                  return ' please Enter Valid Email';
                } else {
                  updateEmail(v);
                }
              },
              updateData: updateEmail,
              label: 'email',
            ),
            SizedBox(
              height: 25,
            ),
            CustomInput(
              customController: passwordController,
              validation: (String v) {
                if (v.trim().isEmpty || v.length < 5) {
                  return ' please Enter Valid Password';
                } else {
                  updatePassword(v);
                }
              },
              updateData: updatePassword,
              label: 'password',
            ),
            SizedBox(
              height: 25,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, letterSpacing: 1),
                ),
                onPressed: () {
                  print(user);
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              child: Text('Sign Up'),
              onPressed: () {},
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                new Container(
                
                  height: 1,
                  width: 80.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 80.0, right: 10.0),
                ),
                Text(' OR '),
                Container(
                
                  height: 1,
                  width: 80.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  updateEmail(String email) {
    user.email = emailController.text;
    print(user.email);
  }

  updatePassword(String password) {
    user.password = passwordController.text;
    print(user.password);
  }
}
