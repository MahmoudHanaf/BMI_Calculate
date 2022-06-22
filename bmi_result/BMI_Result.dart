import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {

  final double result ;
  final bool isMale ;
  final int age ;

  BMI_Result(
      this.result,
      this.age,
      this.isMale
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back ,
            size: 32,
        ),

        ),
        title: Center(
          child: Text(
            'BMI Result',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'Gender :  ${isMale ? 'Male' : 'Female'} ',
               style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold
               ),
               textAlign: TextAlign.center,
             ),
             Text(
               'Result :  ${result.round()}',
               style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold
               ),
               textAlign: TextAlign.center,
             ),
             Text(
               'Age : ${age}',
               style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold
               ),
               textAlign: TextAlign.center,
             ),
           ],
        ),
      ),
    );
  }
}
