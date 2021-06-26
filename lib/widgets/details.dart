import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10.0),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.87,
      //color: Colors.red,
      // alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TweenAnimationBuilder(
            child: Text(
              "Hi Nabin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            curve: Curves.easeInCubic,
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 1200),
            builder: (BuildContext context, double _val, Widget? child) {
              return Opacity(
                opacity: _val,
                child: Padding(
                  padding: EdgeInsets.only(top: _val * 40),
                  child: child,
                ),
              );
            },
          ),
          TweenAnimationBuilder(
            child: Text(
              "10 Task are pending",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
            //    curve: Curves.easeInCubic,
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 1100),
            builder: (BuildContext context, double _val, Widget? child) {
              return Opacity(
                opacity: _val,
                child: Padding(
                  padding: EdgeInsets.only(top: _val * 10),
                  child: child,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
