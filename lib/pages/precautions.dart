import 'package:Covid/helpers/colors.dart';
import 'package:flutter/material.dart';
class Precaution extends StatefulWidget {
  @override
  _PrecautionState createState() => _PrecautionState();
}

class _PrecautionState extends State<Precaution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Precautions"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 15.0),
          child: Column(
            children: [
              Text(
                "Ways to prevent the disease",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green[800],
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Image(
                    image: NetworkImage("https://covid.gov.pk/v2/img/advice-a.png"),
                  ),
                  title: Text(
                    "Use Face Masks When In Closed And Crowded Places",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Cover coughs and sneezes with tissues.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Image(
                    image: NetworkImage("https://covid.gov.pk/v2/img/advice-a.png"),
                  ),
                  title: Text(
                    "Avoid Crowd",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("As an individual, you can lower your risk of infection by reducing your rate of contact with other people. Avoiding public spaces and unnecessary social gatherings, especially events with large numbers of people or crowds, will lower the chance that you will be exposed to the coronavirus as well as to other infectious diseases like flu.",
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
                  leading: Image(
                    image: NetworkImage("https://covid.gov.pk/v2/img/advice-a.png"),
                  ),
                  title: Text(
                    "Hand Hygiene",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Wash hands often with soap and water for at least 20 seconds or use hand sanitizer if soap and water are not available.",
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
                  leading: Image(
                    image: NetworkImage("https://covid.gov.pk/v2/img/advice-a.png"),
                  ),
                  title: Text(
                    "Sick People",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Avoid close contact with anyone showing symptoms of respiratory illness.",
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
