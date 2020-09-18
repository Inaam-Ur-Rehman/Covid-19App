import 'package:Covid/helpers/colors.dart';
import 'package:flutter/material.dart';
class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("FAQ's"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add,size: 50,),
                  title: Text(
                    "What is Isolation?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Separation of the affected person or suspected of being infected from other healthy people for the duration of the disease infection inappropriate places and health conditions, in order to prevent the transmission of the infection.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add,size: 50,),
                  title: Text(
                    "What is the difference between isolation and quarantine?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Isolation and quarantine are common public health strategies used to help prevent the spread of infectious diseases. Isolation and quarantine keep people who are sick or exposed to illness isolated for a defined period of time to prevent the disease spread.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add,size: 50,),
                  title: Text(
                    "Why this Prevention important for me?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("You may be asked to: Stay at home Stay away from others Ensure that there are no symptoms of the disease Contact the doctor if you develop symptoms.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add,size: 50,),
                  title: Text(
                    "Does Isolation and quarantine prevent infection of others?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Quarantine and isolation are effective measures that are taken to reduce the spread of the disease to all members of society.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),SizedBox(height: 20.0,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add,size: 50,),
                  title: Text(
                    "What is Quarantine?",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Restricting the activities of healthy people for a period of time as determined by the competent medical authorities.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
