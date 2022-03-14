import 'package:firebase_099/services/auth_services.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children: [
            user(),
              const SizedBox(height: 14),
              password(),
              const SizedBox(height: 14),
            ElevatedButton(
              onPressed: () {
                registerWithEmail(_email.text, _password.text);
              },
              child: Text('submit'
              )
              ),
            ElevatedButton(
              onPressed: () {},child: const Text('Google Sign In')),
          ],
        ),
      ),
    );
  }
  TextFormField user() {
    return TextFormField(
                controller: _email,
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'Enter Username Please';
                  }
                  return null;
                } ,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 2.0,
                    )
                  )
                ),
              );
  }

  TextFormField password() {
    return TextFormField(
              controller: _password,
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'Enter Password Please';
                  }
                  return null;
                } ,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 2.0,
                    )
                  )
                ),
                  );
  }

}