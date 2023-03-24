import 'package:flutter/material.dart';
import 'package:organixo/main.dart';

class GoPremium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 20,
                ),
              ),
              SizedBox(
            width: 15,
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text(
                'Go Premium',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text('Get unlimited access\nto all our features !',style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),)
            ],
          )
            ]),
          ),
          Positioned(bottom: 15,
          right: 15,
          child: Container(
            padding: EdgeInsets.all(10),
            
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(15),),
            child: Icon(Icons.arrow_forward, color: Colors.white,)),
          )
          
        ],
      ),
    );
  }
}
