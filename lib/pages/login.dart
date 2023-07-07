import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/main.dart';
import 'package:flutter_foodpanda/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _ctrlPhone = TextEditingController();
  TextEditingController _ctrlpassword = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  doLogin() {
    if (_formkey.currentState!.validate()) {
      try {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MyHomePage()),
        );
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(120, 158, 158, 158)),
                    color: Colors.grey[50],
                  ),
                  child: Center(
                    child: TextFormField(
                        controller: _ctrlPhone,
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Email is require";
                          } else if (value.contains("@gamil.com")) {
                            return "You have to use @gmail.com";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone",
                            hintStyle: const TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.phone, color: Colors.pink))),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(120, 158, 158, 158)),
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Center(
                    child: TextFormField(
                        controller: _ctrlpassword,
                        obscureText: true,
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "password is require";
                          } else if (value.length < 5) {
                            return "You have to use password  >5";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: const TextStyle(fontSize: 18),
                            prefixIcon:
                                Icon(Icons.security, color: Colors.pink))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => {doLogin()},
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
