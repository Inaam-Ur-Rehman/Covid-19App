import 'package:Covid/helpers/colors.dart';
import 'package:Covid/pages/faq.dart';
import 'package:Covid/pages/myths.dart';
import 'package:Covid/pages/precautions.dart';
import 'package:Covid/pages/symptoms.dart';
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  bool isLoading = true;
  var getConfirm;
  var getDeath;
  var getRecover;
  var getCritical;
  var getConfirmNumber;
  var getDeathNumber;
  var getRecoveredNumber;
  var getCriticalNumber;


  List<String> provinceData = List();
  List<String> provinceName = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();

  }
  _getData() async{
    var url = "https://covid.gov.pk/";
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    var mainClass = document.getElementsByClassName('new-cases');
    var mainClass2 = document.getElementsByClassName('deaths');
    var mainClass3 = document.getElementsByClassName('recovered');
    var mainClass4 = document.getElementsByClassName('total');
    var getBox = document.getElementsByClassName('col-lg-12')[0].getElementsByClassName('status-item');
    var getBox2 = document.getElementsByClassName('section')[0].getElementsByClassName('top-statistics');
    var getBox3 = document.getElementsByClassName('top-statistics')[0].getElementsByClassName('deaths');
    var getBox4 = document.getElementsByClassName('top-statistics')[0].getElementsByClassName('recovered');
    var getBox5 = document.getElementsByClassName('top-statistics')[0].getElementsByClassName('total');
    setState(() {
      isLoading = false;
      getConfirm = (mainClass[0].getElementsByClassName('tests')[0].innerHtml);
      getRecover = (mainClass3[0].getElementsByClassName('new-cases')[0].getElementsByClassName('recovered')[0].innerHtml);
      getDeath = (mainClass2[0].getElementsByClassName('new-cases')[0].getElementsByClassName('deaths')[0].innerHtml);
      getCritical= (mainClass4[0].getElementsByClassName('new-cases')[0].getElementsByClassName('total')[0].innerHtml);
      provinceData = getBox.map((element)=>element.getElementsByClassName('h4')[0].innerHtml).toList();
      provinceName = getBox.map((element)=>element.getElementsByClassName('title')[0].innerHtml).toList();
      getConfirmNumber = getBox2[0].getElementsByClassName('counter')[0].innerHtml;
      getDeathNumber = getBox3[0].getElementsByClassName('counter')[0].innerHtml;
      getRecoveredNumber = getBox4[0].getElementsByClassName('counter')[0].innerHtml;
      getCriticalNumber = getBox5[0].getElementsByClassName('counter')[0].innerHtml;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            SizedBox(height: 80,
              child: Image(
                image: NetworkImage('https://covid.gov.pk/v2/img/logo.png'),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>HomePage(),
                  ),
                );
              },
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>Faq(),
                  ),
                );
              },
              title: Text("FAQ"),
              trailing: Icon(Icons.question_answer),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>Precaution(),
                  ),
                );
              },
              title: Text("Precautions"),
              trailing: Icon(Icons.description),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>Symptoms(),
                    ),
                );
              },
              title: Text("Symptoms"),
              trailing: Icon(Icons.contactless_outlined),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>Myth(),
                  ),
                );
              },
              title: Text("Myths"),
              trailing: Icon(Icons.record_voice_over),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 30),
                child: Text("Muhammad Inam Ur Rehman")),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: isLoading == true ? Center(child: CircularProgressIndicator(),) :Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.lightBlue[100],
                  elevation: 05,

                  child: Container(
                    padding: EdgeInsets.all(04),
                    width: 170,
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("Confirmed Cases",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                            Image(image: AssetImage('assets/images/group.png'),
                              width: 40,height: 40,),
                          ],
                        ),
                        Text(getConfirmNumber,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,),),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 150,

                          alignment: Alignment.center,
                          child: Text("${getConfirm}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: tertiaryColor,
                  elevation: 05,
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(04),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Deaths",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),
                            Image(image: AssetImage("assets/images/coffin.png"),
                              width: 55,height: 40,),
                          ],
                        ),
                        Text(getDeathNumber,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,),),
                        SizedBox(height:15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 150,

                          alignment: Alignment.center,
                          child: Text("${getDeath}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.green[200],
                  elevation: 05,
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(04),
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recovered",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Image(image: AssetImage("assets/images/patient.png"),
                              width: 40,height: 40,),
                          ],
                        ),
                        Text(getRecoveredNumber,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,),),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 150,

                          alignment: Alignment.center,
                          child: Text("${getRecover}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),

                Card(
                  color: Colors.amberAccent[100],
                  elevation: 05,
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(04),
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Critical",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Image(image: AssetImage("assets/images/hospitalbed.png"),
                              width: 40,height: 40,),
                          ],
                        ),
                        Text(getCriticalNumber,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,),),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 150,

                          alignment: Alignment.center,
                          child: Text("${getCritical}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Text("Province wise Cases",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                            provinceData[0],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            provinceName[0],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          provinceData[1],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          provinceName[1],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          provinceData[2],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          provinceName[2],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          provinceData[3],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          provinceName[3],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          provinceData[4],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          provinceName[4],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.blueGrey[100],
                  child: Container(
                    width:150,
                    height: 90,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          provinceData[5].replaceAll(new RegExp(r"\s+"), ""),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          provinceName[5],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
