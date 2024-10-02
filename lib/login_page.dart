import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  bool isLoginSuccess = true;
  bool visible = true;

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage(username: username)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 98, 215, 102),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 98, 215, 102),
          title: Text("BELA NEGARA"),
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          centerTitle: true,
        ),
        body: Column(children: [
          Image.asset('images/logo_upn.png', height: 200),
          _usernameField(),
          SizedBox(height: 20),
          _passwordField(),
          SizedBox(height: 20),
          _loginButton(context),
        ]),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: "Username",
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: visible,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(
              visible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: (isLoginSuccess) ? Colors.teal : Colors.red,
        ),
        onPressed: () {
          String text = '';
          if (username == 'admin' && password == 'admin') {
            _navigateToHome();
            setState(() {
              text = "Login Sukses";
              isLoginSuccess = true;
            });
          } else {
            setState(() {
              text = "Login Gagal";
              isLoginSuccess = false;
            });
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }
}
