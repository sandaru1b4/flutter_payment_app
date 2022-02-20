import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/text_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: height,
        child: Stack(
          children: [_headSection(), _listBills()],
        ),
      ),
    );
  }

//headsection of the Home
  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [_mainBackground(), _curveImgContainer(), _btnContainer()],
      ),
    );
  }

//main background of home
  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/background.png"))),
        ));
  }

  _curveImgContainer() {
    return Positioned(
        left: -2,
        right: 0,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/curve.png"))),
        ));
  }

  _btnContainer() {
    return Positioned(
        right: 50,
        bottom: 15,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/lines.png")),
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 1),
                    color: Color(0xFF11324d).withOpacity(0.2))
              ]),
        ));
  }

  _listBills() {
    return Positioned(
        top: 320,
        child: Container(
            height: 130,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 18),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 3, color: Colors.grey),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/brand1.png"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Electricity Bill",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ID: 5855555",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedText(
                        text: "Auto pay on 25th january 2022",
                        color: AppColor.green,
                      ),
                      SizedBox(
                        height: 4,
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
