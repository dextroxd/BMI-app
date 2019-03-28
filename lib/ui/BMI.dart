import 'package:flutter/material.dart';

class BMI extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BMIState();
  }

}

class BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: new Text("BMI",style: new TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
      ),
      body: new ListView(
        children: <Widget>[
          new Center(
            child: new Image.asset("images/bmilogo.png",
              height: 90.0,
              width: 90.0,),
          ),
          new Container(
            height: 260.0,
            width: 200.0,
            color: Colors.grey.shade300,
            child: new Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  controller: null,
                  decoration: new InputDecoration(
                    hintText:"Enter your age",
                    labelText: "Age",
                    icon: new Icon(Icons.person_outline),
                  ),
                ),
                new TextField(
                  controller: null,
                  decoration: new InputDecoration(
                    hintText:"Enter your height",
                    labelText: "Height in feet",
                    icon: new Icon(Icons.assessment),
                  ),
                ),
                new TextField(
                  controller: null,
                  decoration: new InputDecoration(
                    hintText:"Enter your weight",
                    labelText: "Weight in kg",
                    icon: new Icon(Icons.line_weight),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new RaisedButton(onPressed: ()=>debugPrint("Calculate"),color: Colors.pinkAccent,
                padding: new EdgeInsets.only(top: 10.0,right: 15.0,bottom: 10.0,left:15.0),
                child: new Text("Calculate",style: new TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),),)

              ],
            ),
          )

        ],
      ),
    );
  }
}