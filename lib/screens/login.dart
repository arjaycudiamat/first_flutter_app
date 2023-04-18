import 'package:flutter/material.dart';
//import 'package:sampleui/screens/dashboard.dart';
import '/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.white, Colors.blue])),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Login',
            style: TextStyle(color: Colors.black87, fontSize: 24)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.contact_support_outlined))
        ],
        leading: Icon(Icons.notes),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text('Welcome User!', style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: myController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          floatingLabelStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(40.0)),
                          focusColor: Colors.lightGreen,
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Colors.black,
                          labelText: "Username", border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: controller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            floatingLabelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(40.0)),

                            focusColor: Colors.lightGreen,
                            suffixIcon: Icon(Icons.visibility_off),
                            prefixIcon: Icon(Icons.key),
                            prefixIconColor: Colors.black,
                            suffixIconColor: Colors.black,
                            labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                    }, child: Text("Register Here", style: TextStyle(color: Colors.black))),
                    TextButton(onPressed: () {}, child: Text("Forgot Password?",style: TextStyle(color: Colors.black))),
                  ]),
                  Container(width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 160),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            /*Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(
                              username: myController.text,
                            ),),);*/
                          }

                        },
                        child: Text("Log In",style: TextStyle(color: Colors.white, fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}