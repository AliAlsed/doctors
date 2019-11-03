import 'package:doctors/models/user.dart';
import 'package:doctors/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
              height: 50,
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
              child: Text('Sign Up', style: TextStyle(letterSpacing: 1,
              fontSize: 15,
              fontWeight: FontWeight.bold
              ),),
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
                Text(' OR ', style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                  height: 1,
                  width: 80.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            SizedBox(
              height: 25,
            ),
            ButtonTheme(
              height: 50,
              child: SignInButton(
                Buttons.Facebook,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ButtonTheme(
              height: 50,
              child: SignInButton(
                Buttons.Twitter,
                onPressed: () {},
              ),
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
