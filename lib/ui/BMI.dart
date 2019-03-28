import 'package:flutter/material.dart';
import 'dart:math' as math;
class BMI extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BMIState();
  }

}

class BMIState extends State<BMI> {
  final TextEditingController _height = new TextEditingController();
  final TextEditingController _weight = new TextEditingController();
  final TextEditingController _age = new TextEditingController();
  double _bmi=0.0;
  String _tobe = "";
  String _result = "";
  int _calBmi()
  {
    setState(() {
      String height = _height.text;
      String weight = _weight.text;
      String age = _age.text;
      if(height.isNotEmpty&&weight.isNotEmpty&&age.isNotEmpty)
     { _bmi = double.parse(weight)/(math.pow(double.parse(height)*0.3048,2));
      _tobe = "Your BMI:${_bmi.toStringAsFixed(1)}";
      if(_bmi<18.5){
        _result = "Underweight";
      }
      else if(_bmi>=18.5&&_bmi<24.9){
        _result = "Normal";
      }
      else if(_bmi>=24.9&&_bmi<29.9){
        _result = "Overweight";
      }
      else if(_bmi>=29.9){
        _result = "Obese";
      }
     }
      else{
        _tobe="Please fill all the fields";}
    });
  }
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
                  controller: _age,
                  decoration: new InputDecoration(
                    hintText:"Enter your age",
                    labelText: "Age",
                    icon: new Icon(Icons.person_outline),
                  ),
                ),
                new TextField(
                  controller:_height,
                  decoration: new InputDecoration(
                    hintText:"Enter your height",
                    labelText: "Height in feet",
                    icon: new Icon(Icons.assessment),
                  ),
                ),
                new TextField(
                  controller: _weight,
                  decoration: new InputDecoration(
                    hintText:"Enter your weight",
                    labelText: "Weight in kg",
                    icon: new Icon(Icons.line_weight),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new RaisedButton(onPressed: _calBmi,color: Colors.pinkAccent,
                padding: new EdgeInsets.only(top: 10.0,right: 15.0,bottom: 10.0,left:15.0),
                child: new Text("Calculate",style: new TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),),


              ],
            ),
          ),
          new Center(
            child:new Text(
              _tobe,style: new TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.blueAccent,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
          new Center(
            child:new Text(
              _result,style: new TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.pinkAccent,
              fontSize: 20.0,
            ),
            ),
          )



        ],
      ),
    );
  }
}