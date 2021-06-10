import 'package:assignment_2_of_flutter/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 11.0,
          title: Center(
              child: Text(
            "INFINIX",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          )),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=100"),
                fit: BoxFit.cover)),
        padding: EdgeInsets.only(top: 50.50, bottom: 50.50),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  
                    
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          labelText: "Email",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.black),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail)),
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: 50),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.black),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.security)),
                      keyboardType: TextInputType.name,
                      autofocus: false,
                      obscureText: true,
                     
                      
                    ),
                    
                    
                    SizedBox(height: 40),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          enabledMouseCursor: SystemMouseCursors.alias,
                          elevation: 11.0,
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Shop()));
                        },
                        icon: Icon(Icons.arrow_forward_outlined),
                        label: Text("Sign in")),
                    SizedBox(height: 40),
                    Text(
                      "OR SIGN IN WITH FACEBOOK",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    
                    SizedBox(height: 25),
                    
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/facebook.png'),
                      radius: 30,
                    )
                    
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
