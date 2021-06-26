import 'package:dailytask/widgets/animation.dart';
import 'package:flutter/material.dart';

class MyItems extends StatelessWidget {
  const MyItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: MediaQuery.of(context).size.height * 0.4,
      //  width: MediaQuery.of(context).size.width * 0.87,
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAnimation()));
                },
                child: TweenAnimationBuilder(
                  curve: Curves.easeInCubic,
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 1200),
                  builder: (BuildContext context, double _val, Widget? child) {
                    return Opacity(opacity: _val, child: child);
                  },
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10.0),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF5C5AEB),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF495BFC).withOpacity(0.6),
                              blurRadius: 18,
                              spreadRadius: 4,
                              offset: Offset(4, 4))
                        ]),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "30",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TweenAnimationBuilder(
                curve: Curves.easeInCubic,
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 1200),
                builder: (BuildContext context, double _val, Widget? child) {
                  return Opacity(opacity: _val, child: child);
                },
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF5C5AEB),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF495BFC).withOpacity(0.6),
                            blurRadius: 18,
                            spreadRadius: 4,
                            offset: Offset(4, 4))
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "7",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "In Progress",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TweenAnimationBuilder(
                curve: Curves.easeInCubic,
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 1200),
                builder: (BuildContext context, double _val, Widget? child) {
                  return Opacity(opacity: _val, child: child);
                },
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF5C5AEB),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF495BFC).withOpacity(0.6),
                            blurRadius: 18,
                            spreadRadius: 4,
                            offset: Offset(4, 4))
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "21",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Ongoing",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              TweenAnimationBuilder(
                curve: Curves.easeInCubic,
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 1200),
                builder: (BuildContext context, double _val, Widget? child) {
                  return Opacity(opacity: _val, child: child);
                },
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF5C5AEB),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF495BFC).withOpacity(0.6),
                            blurRadius: 18,
                            spreadRadius: 4,
                            offset: Offset(4, 4))
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "10",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Waiting For Review",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
