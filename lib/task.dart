import 'package:dailytask/widgets/appbar.dart';
import 'package:dailytask/widgets/details.dart';
import 'package:dailytask/widgets/items.dart';
import 'package:dailytask/widgets/monthlyreview.dart';
import 'package:dailytask/widgets/taskname.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskUI(),
    );
  }
}

class TaskUI extends StatefulWidget {
  const TaskUI({Key? key}) : super(key: key);

  @override
  _TaskUIState createState() => _TaskUIState();
}

class _TaskUIState extends State<TaskUI> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1200), vsync: this);
    animation =
        Tween<double>(begin: 10.0, end: 45.0).animate(animationController)
          ..addListener(() {
            setState(() {});
          });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xff4530b3),

      //   type:
      //       BottomNavigationBarType.fixed, //to add more than 3 items in nav bar
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           CupertinoIcons.home,
      //           color: Colors.white,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.note_outlined,
      //           color: Colors.white,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           CupertinoIcons.person,
      //           color: Colors.white,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           CupertinoIcons.bell,
      //           color: Colors.white,
      //         ),
      //         label: ""),
      //     // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ],
      // ),

      floatingActionButton: Opacity(
        opacity: animation.value * 0.02,
        child: ScaleTransition(
          alignment: Alignment.center,
          scale: CurvedAnimation(
              parent: animationController, curve: Curves.fastOutSlowIn),
          child: Container(
            height: animation.value,
            width: animation.value,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: animation.value * 0.6,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height:
              animation.value * (MediaQuery.of(context).size.height * 0.0009) +
                  12,
          decoration: BoxDecoration(
            color: Color(0xFF5034DF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.note_outlined,
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff7364e3),
              Color(0xff604ed0),
              Color(0xff4530b3),
              Color(0xff4530b3),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(),
              Details(),
              TaskName(),
              Monthly(),
              MyItems(),
              SizedBox(
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
