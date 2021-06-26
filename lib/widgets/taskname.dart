import 'package:flutter/material.dart';

class TaskName extends StatelessWidget {
  const TaskName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      // color: Colors.yellow,
      child: TweenAnimationBuilder(
        curve: Curves.easeInExpo,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 1200),
        builder: (BuildContext context, double _val, Widget? child) {
          return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.only(right: _val * 20),
                child: child,
              ));
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.87,
          decoration: BoxDecoration(
              color: Color(0xFF495BFC),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Text(
                  "Mobile App Design",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 3.0),
                child: Text(
                  "Dave and Mike",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10.0),
                    width: MediaQuery.of(context).size.width * 0.3,
                    //  color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 37,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              color: Colors.white,
                              height: MediaQuery.of(context).size.width * 0.11,
                              width: MediaQuery.of(context).size.width * 0.11,
                              child: Padding(
                                padding: const EdgeInsets.all(2.7),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage("assets/images/nabin.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          //left: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              color: Colors.white,
                              height: MediaQuery.of(context).size.width * 0.11,
                              width: MediaQuery.of(context).size.width * 0.11,
                              child: Padding(
                                padding: const EdgeInsets.all(2.7),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage("assets/images/girl1.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 15.0),
                    child: Text(
                      "Now",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
