import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 11.0,
        actions: [
          Container(
            
            child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.account_box_rounded),
                onPressed: () {}),
          )
        ],
        title: Center(
          child: Text(
            "INFINIX",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1528459801416-a9e53bbf4e17?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=355&q=80"),
                fit: BoxFit.cover)),
        padding: EdgeInsets.only(top: 50.50, bottom: 50.50),
        
          child: ListTile(
            leading: SizedBox(
                child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Hassan.jpg'),
              ),
            ),
            title: Column(
              children: [
                Text(
                  "Hassan Raza",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "hr280161@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Text(
                      "ACCOUNT INFORMATION",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: ListTile(
                        title: Text(
                          "Full Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Hassan Raza"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("hr280161@gmail.com"),
                    ),
                    ListTile(
                      title: Text(
                        "Phone",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("+923003390xxx"),
                    ),
                    ListTile(
                      title: Text(
                        "Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle:
                          Text("Shahdadpur, Sindh, Pakistan"),
                    ),
                    ListTile(
                      title: Text(
                        "Gender",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Male"),
                    ),
                    ListTile(
                      title: Text(
                        "Date of Birth",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("05-April-1999"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 11.0,
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      label: Text(
                        "Back",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
