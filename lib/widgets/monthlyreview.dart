import 'package:flutter/material.dart';

class Monthly extends StatefulWidget {
  const Monthly({Key? key}) : super(key: key);

  @override
  _MonthlyState createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> with TickerProviderStateMixin {
  @override
  late AnimationController animationController;
  late Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1200), vsync: this);
    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    //setData();

    super.initState();
    animationController.forward();
  }

  // Future<void> setData() async {
  //   animationController?.forward();
  //   await Future<dynamic>.delayed(const Duration(milliseconds: 200));
  //   setState(() {
  //     opacity1 = 1.0;
  //   });
  //   await Future<dynamic>.delayed(const Duration(milliseconds: 200));
  //   setState(() {
  //     opacity2 = 1.0;
  //   });
  //   await Future<dynamic>.delayed(const Duration(milliseconds: 200));
  //   setState(() {
  //     opacity3 = 1.0;
  //   });
  // }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      margin: EdgeInsets.symmetric(horizontal: 40),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Monthly Review",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500),
          ),
          ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.fastOutSlowIn,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.063,
              width: MediaQuery.of(context).size.height * 0.063,
              decoration: BoxDecoration(
                  color: Color(0xff21d1ff),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.calendar_today,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
