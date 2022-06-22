import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bmi_result/BMI_Result.dart';






class BMI_Project extends StatefulWidget {


  @override
  _BMI_ProjectState createState() => _BMI_ProjectState();
}

class _BMI_ProjectState extends State<BMI_Project> {

 bool isMale =true;
 double height =120 ;
 double weight =40;
 int age =15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
          child: Text(
            'BMI Calculator',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
             color: Colors.black38,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale =true;

                          });
                        },
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                             color: isMale? Colors.black12 : Colors.black54 ,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Image(
                              //     image: AssetImage('Images/mahmoud.jpg'),
                              //     height: 100,
                              //     width: 100,
                              // ),
                              Icon(
                                Icons.male,
                                size: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale =false;
                          });
                        },
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: !isMale? Colors.black12 : Colors.black54,

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Icon(
                                Icons.female,
                                size: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15
                ),
                child: Expanded(
                  child: Container(
                   decoration: BoxDecoration(
                     color: Colors.black54,
                     borderRadius: BorderRadius.circular(20)
                   ),
                    width: double.infinity,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HIGHT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: [
                             Text(
                               '${height.round()}',
                               style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 40,
                                   color: Colors.white
                               ),
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             Text(
                               'cm',
                               style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 20,
                                   color: Colors.white
                               ),
                             ),

                           ],
                         ),
                        Slider(
                            value: height,
                            max: 220,
                            min: 80,
                            activeColor: Colors.white,
                            inactiveColor: Colors.black54,
                            onChanged: (value){
                              setState(() {
                                height= value;
                              });
                          }

                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black38,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(

                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              '${age.round()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 FloatingActionButton(
                                     onPressed:(){
                                      setState(() {
                                        age --;
                                      });
                                     },
                                   child: Icon(
                                     Icons.remove,
                                   ),
                                   backgroundColor: Colors.black54,
                                   mini: true,
                                 ),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age ++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.black54,
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'weight',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed:(){
                                     setState(() {
                                       weight --;
                                     });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.black54,
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed:(){
                                     setState(() {
                                       weight ++;
                                     });
                                  },
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.black54,
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child:  MaterialButton(
              height: 60,
                color: Colors.black54,
                onPressed: (){
                  var result = weight / pow(height /100 ,2);

                  Navigator.push(context,
                    MaterialPageRoute(builder:
                     (context) => BMI_Result(result, age ,isMale ),
                    ),
                  );
                },
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}

// var result = weight / pow(height /100 ,2);
// print result.round()