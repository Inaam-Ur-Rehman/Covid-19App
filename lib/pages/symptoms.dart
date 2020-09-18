import 'package:Covid/helpers/colors.dart';
import 'package:flutter/material.dart';
class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Symptoms"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 15.0),
          child: Column(
            children: [
              Text(
                  "What are the symptoms of COVID-19?",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green[800],
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 15.0,),
              Text(
                "It can take up to 14 days for symptoms of coronavirus to appear. The main symptoms to look out for are:",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Image(
                    image: NetworkImage("https://covid.gov.pk/v2/img/symptom-a.png"),
                  ),
                  title: Text(
                      "Fever",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("This means you feel hot to touch on your chest or back (you do not need to measure your temperature). It is a common sign and also may appear in 2-10 days if you affected.",
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
                    image: NetworkImage("https://covid.gov.pk/v2/img/symptom-b.png"),
                  ),
                  title: Text(
                    "Coughing",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("This means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours (if you usually have a cough, it may be worse than usual).",
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
                    image: NetworkImage("https://covid.gov.pk/v2/img/symptom-c.png"),
                  ),
                  title: Text(
                    "Shortness Of Breath ",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing or shortness of breath.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
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
