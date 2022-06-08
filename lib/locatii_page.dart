import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff818181),
            title: Text('Locatia'),
            ),
        body: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width:width/2,
                      child: Image.asset('location_image.png'),
                      ),
                ],
                ),
            ),
        );
  }
}
