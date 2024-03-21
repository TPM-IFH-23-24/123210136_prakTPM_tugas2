import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username = "";
  String password = "";
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Container(
          child: Column(
            children: [
              _username(),
              _password(),
              _loginbutton(context)
            ],
          ),
        ),
      ),
    );
  }
  Widget _username(){
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: (isLogin) ? Colors.green : Colors.red)
            )
        ),
      ),
    );
  }

  Widget _password(){
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: (isLogin) ? Colors.green : Colors.red)
            )
        ),
      ),
    );
  }

  Widget _loginbutton(context){
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("LOGIN"),
        style: ElevatedButton.styleFrom(
            backgroundColor: (isLogin) ? Colors.green : Colors.red
        ),
        onPressed: (){
          String text = "";
          if(username == 'admin' && password == '123') {
            setState(() {
              text = "Login Success";
              isLogin = true;
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context){
                return HomePage();
            }));
          });
          }
          else{
            setState(() {
              text = "Login Failed";
              isLogin = false;
            });
          }

          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
    )
    );
  }
}


