import 'package:Covid/helpers/colors.dart';
import 'package:Covid/res.dart';
import 'package:flutter/material.dart';
class Myth extends StatefulWidget {
  @override
  _MythState createState() => _MythState();
}

class _MythState extends State<Myth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Myths"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 15.0),
          child: Column(
            children: [
              Text(
                "Myths About COVID-19",
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
                    image: AssetImage(Res.lightningbolt),
                  ),
                  title: Text(
                    "Cold weather and snow CANNOT kill the new coronavirus",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("There is no reason to believe that cold weather can kill the new coronavirus or other diseases. The normal human body temperature remains around 36.5 A C to 37 A C regardless of the external temperature or weather. ",
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
                    image: AssetImage(Res.medicine),
                  ),
                  title: Text(
                    "Antibiotics do not work againts viruses, only bacteria",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("The new coronavirus (2019-nCoV) is a virus and,therefore, antibiotics should not be used as a means of prevention or treatmeant. However, if you are hospitalize for the 2019-nCoV,you may receive antibiotics because bacterial co-infection is possible",
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
                    image: AssetImage(Res.virus),
                  ),
                  title: Text(
                    "The new coronavirus cannot be transmitted through goods manufactures in China or any country reporting COVID-19 cases.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Yes it is safe. People receiving imported goods or packages from China are not exposed to the rised of getting the new coronavirus. We know from experience that is very unlikely that the virus would survive fora long a time on things such as letters or packages.",
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
                    image: AssetImage(Res.garlic),
                  ),
                  title: Text(
                    "There is now evidence fromthe current out brreak that eating garlic has protected people from the new coronavirus",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Garlic is the healthy food that may have some antimicrobial properties. How ever, there is no evidance from the current outbreak that eating garlic has protected peolpe from the new coronavirus.",
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
