import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      margin: EdgeInsets.only(left: 20, right: 20, top: 40.0),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: MediaQuery.of(context).size.width * 0.07,
              )),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.width * 0.11,
                  width: MediaQuery.of(context).size.width * 0.11,
                  child: Padding(
                    padding: const EdgeInsets.all(2.7),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/nabin.png"),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
