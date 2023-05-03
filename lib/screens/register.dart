import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController= TextEditingController();
  final fullnameController= TextEditingController();
  final countryController= TextEditingController();
  final emailController= TextEditingController();
  final phonenumberController= TextEditingController();
  final passwordController= TextEditingController();



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
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.app_registration_rounded))
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.black,
                        labelText: "Username",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: fullnameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your fullname';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.drive_file_rename_outline_outlined),
                        prefixIconColor: Colors.black,
                        labelText: "Fullname",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: countryController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a country';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.home_filled),
                        prefixIconColor: Colors.black,
                        labelText: "Country",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your e-mail';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: Colors.black,
                        labelText: "E-mail",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Colors.black,
                        labelText: "Phone Number",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.circular(20.0)),
                        focusColor: Colors.lightGreen,
                        prefixIcon: Icon(Icons.lock_open_rounded),
                        prefixIconColor: Colors.black,
                        labelText: "Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.check_box),Text("Agree with"),TextButton(onPressed: (){}, child: Text("Terms and Conditions",style: TextStyle(color: Colors.white)))],)
              ]),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 130.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.pop(context);
                    }
                  }, child: Text("Register Account"))
              )


            ],
          ),
        ),
      ),
    ));
  }
}