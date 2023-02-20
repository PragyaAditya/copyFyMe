import 'package:copyfyme/common/bottom_sheet_icon_row.dart';
import 'package:copyfyme/common/button.dart';
import 'package:copyfyme/common/button_outline.dart';
import 'package:copyfyme/common/color_button.dart';
import 'package:copyfyme/common/followers_screen.dart';
import 'package:copyfyme/common/rounded_button.dart';
import 'package:copyfyme/common/rounded_outline_button.dart';
import 'package:copyfyme/common/subscription_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 4;

  final pages = [
    const Page3(),
    const Page2(),
    const Page4(),
    const Page5(),
    const Page1(),
  ];

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context));
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
        height: 70,
        decoration: BoxDecoration(
          // border: Border.all(),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                    print("heellooo");
                    print(pages[pageIndex]);
                  },
                  icon: pageIndex == 0
                      ? Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fristW.svg'))
                      // Container(
                      //     height: MediaQuery.of(context).size.height * 0.08,
                      //     width: MediaQuery.of(context).size.width * 0.07,
                      //     decoration: BoxDecoration(
                      //         // color: Colors.amber,
                      //         image: DecorationImage(
                      //             fit: BoxFit.contain,
                      //             image: AssetImage('assets/learders.png'))),
                      //   )
                      : Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fristW.svg'))),
              Text(
                "Leaders",
                style: TextStyle(color: Color(0xff454343)),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/secondW.svg'))
                      : Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/secondW.svg'))),
              Text(
                "Trades",
                style: TextStyle(color: Color(0xff454343)),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/thridW.svg'))
                      : Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/thridW.svg'))),
              Text(
                "Order",
                style: TextStyle(color: Color(0xff454343)),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fourthW.svg'))
                      : Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fourthW.svg'))),
              Text(
                "News",
                style: TextStyle(color: Color(0xff454343)),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 4;
                    });
                  },
                  icon: pageIndex == 4
                      ? Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fifthW.svg'))
                      : Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 224, 223, 223)),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset('assets/fifthW.svg'))),
              Text(
                "Menu",
                style: TextStyle(color: Color(0xff454343)),
              )
            ],
          )
        ]));
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool showFollower = true;
  bool showSubscription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 0,
          centerTitle: false,
          actions: [appBarAction()],
          title: titleLogo()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            followerBtn(),
            cons()
          ],
        ),
      ),
    );
  }

  Widget appBarAction() => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Center(
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/Ellipse 11.png'))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              showFollower == true
                  ? Text(
                      'Alpha',
                      style: TextStyle(color: Color(0xff454343)),
                    )
                  : Text(
                      'Subscripber',
                      style: TextStyle(color: Color(0xff454343)),
                    ),
            ],
          ),
        ),
      );

  Widget titleLogo() => Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.08,
            decoration: BoxDecoration(
                // color: Colors.amber,
                image:
                    DecorationImage(image: AssetImage('assets/Group 27.png'))),
          ),
          RichText(
              text: TextSpan(
            text: 'copyfy',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            children: const <TextSpan>[
              TextSpan(
                  text: 'me',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff0950AC))),
            ],
          )),
        ],
      );
  Widget followerBtn() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            showFollower == true
                ? ColorButton(
                    text: 'Followers',
                    onpressed: () {
                      setState(() {
                        showSubscription = false;
                        showFollower = true;
                      });
                    },
                  )
                : ButtonOutline(
                    textcolor: Color(0xff494949),
                    color: Color(0xff494949),
                    text: 'Followers',
                    onPressed: () {
                      setState(() {
                        showSubscription = false;
                        showFollower = true;
                      });
                    }),
            showSubscription == true
                ? ColorButton(
                    text: 'Subscription',
                    onpressed: () {
                      setState(() {
                        showSubscription = true;
                        showFollower = false;
                      });
                    },
                  )
                : ButtonOutline(
                    textcolor: Color(0xff494949),
                    color: Color(0xff494949),
                    text: 'Subscription',
                    onPressed: () {
                      setState(() {
                        showSubscription = true;
                        showFollower = false;
                      });
                    })
          ],
        ),
      );

  Widget cons() {
    if (showFollower == true) {
      return const FollowerScreen();
    } else if (showSubscription == true) {
      return const SubscriptionScreen();
    }
    return Container();
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/Ellipsea.png',
      'name': 'Cardano',
      'value': '-2.01%',
      'GValue': '6961.22',
      'bValue': '918.67'
    },
    {
      'image': 'assets/Ellipseb.png',
      'name': 'Litecoin',
      'value': '-2.01%',
      'GValue': '7983.37',
      'bValue': '5749.68'
    },
    {
      'image': 'assets/Ellipsec.png',
      'name': 'EOS',
      'value': '-2.3',
      'GValue': '1880.65',
      'bValue': '3473.46'
    },
    {
      'image': 'assets/Ellipsed.png',
      'name': 'DASH',
      'value': '+ 5.9',
      'GValue': '1474.71',
      'bValue': '13679.13'
    },
    {
      'image': 'assets/Ellipsee.png',
      'name': 'Bitcoincash',
      'value': '-4.01%',
      'GValue': '743.68',
      'bValue': '3759.96'
    },
    {
      'image': 'assets/Ellipsef.png',
      'name': 'Bitcoin',
      'value': '+1.01%',
      'GValue': '1752.38',
      'bValue': '2399.25'
    },
    {
      'image': 'assets/Ellipseg.png',
      'name': 'Ripple',
      'value': '+3.05%',
      'GValue': '8470.13',
      'bValue': '4623.15'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 217, 217),
      appBar: AppBar(
        leadingWidth: 17,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Color(0xff494949),
            ),
          )
        ],
        title: Text(
          'TRADE',
          style: TextStyle(color: Color(0xff494949)),
        ),
        iconTheme: IconThemeData(color: Color(0xff494949)),
        backgroundColor: Colors.white,
      ),
      body: Container(
          // color: const Color(0xffC4DFCB),
          child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              btnRow(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              listViewContainwer()
            ],
          ),
        ),
      )),
    );
  }

  Widget listViewContainwer() => Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 5),
                child: Container(
                  height:
                      //  76,
                      MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(list[index]['image']))),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            list[index]['name'],
                            style: TextStyle(
                                color: Color(0xff454343), fontSize: 16),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            list[index]['value'],
                            style: TextStyle(
                                color: list[index]['value']
                                            .toString()
                                            .substring(0, 1) ==
                                        '+'
                                    ? Colors.green
                                    : Color(0xffEA5656)),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            list[index]['GValue'],
                            style: TextStyle(
                                color: Color(0xff454343), fontSize: 16),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            list[index]['bValue'],
                            style: TextStyle(
                              color: Color(0xff454343),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green)),
                            child: Center(
                                child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 14,
                              color: Colors.green,
                            )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red)),
                            child: Center(
                                child: Icon(Icons.keyboard_arrow_down_outlined,
                                    size: 14, color: Colors.red)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Icon(Icons.more_vert_rounded),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ],
                  ),
                ),
              );
              ;
            }),
      );

  // Widget listContainer() => Padding(
  //       padding: const EdgeInsets.only(right: 10, bottom: 5),
  //       child: Container(
  //         height:
  //             //  76,
  //             MediaQuery.of(context).size.height * 0.11,
  //         width: MediaQuery.of(context).size.width,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5), color: Colors.white),
  //         child: Row(
  //           children: [
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.04,
  //             ),
  //             Container(
  //               height: MediaQuery.of(context).size.height,
  //               width: MediaQuery.of(context).size.width * 0.1,
  //               decoration: BoxDecoration(
  //                   image: DecorationImage(image: AssetImage(listImage[4]))),
  //             ),
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.04,
  //             ),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(
  //                   listName[index],
  //                   style: TextStyle(color: Color(0xff454343), fontSize: 16),
  //                 ),
  //                 SizedBox(
  //                   height: MediaQuery.of(context).size.height * 0.01,
  //                 ),
  //                 Text(
  //                   '-2.01%',
  //                   style: TextStyle(color: Color(0xffEA5656)),
  //                 )
  //               ],
  //             ),
  //             Spacer(),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(
  //                   '6961.22',
  //                   style: TextStyle(color: Color(0xff454343), fontSize: 16),
  //                 ),
  //                 SizedBox(
  //                   height: MediaQuery.of(context).size.height * 0.01,
  //                 ),
  //                 Text(
  //                   '918.67',
  //                   style: TextStyle(
  //                     color: Color(0xff454343),
  //                   ),
  //                 )
  //               ],
  //             ),
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.03,
  //             ),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                   height: 16,
  //                   width: 16,
  //                   decoration: BoxDecoration(
  //                       shape: BoxShape.circle,
  //                       border: Border.all(color: Colors.green)),
  //                   child: Center(
  //                       child: Icon(
  //                     Icons.keyboard_arrow_up,
  //                     size: 14,
  //                     color: Colors.green,
  //                   )),
  //                 ),
  //                 SizedBox(
  //                   height: MediaQuery.of(context).size.height * 0.01,
  //                 ),
  //                 Container(
  //                   height: 16,
  //                   width: 16,
  //                   decoration: BoxDecoration(
  //                       shape: BoxShape.circle,
  //                       border: Border.all(color: Colors.red)),
  //                   child: Center(
  //                       child: Icon(Icons.keyboard_arrow_down_outlined,
  //                           size: 14, color: Colors.red)),
  //                 )
  //               ],
  //             ),
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.04,
  //             ),
  //             Icon(Icons.more_vert_rounded),
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.04,
  //             ),
  //           ],
  //         ),
  //       ),
  //     );

  Widget btnRow() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RoundedButton(
                onpressed: () {},
                text: 'Favorites',
                color: Color(0xff0D62C5),
                width: 0.3),
            SizedBox(
              width: 10,
            ),
            RoundedOutlinButton(
                onpressed: () {},
                text: "Popular",
                color: Colors.white,
                width: 0.26),
            SizedBox(
              width: 10,
            ),
            RoundedOutlinButton(
                onpressed: () {},
                text: "Crypto",
                color: Colors.white,
                width: 0.26),
            SizedBox(
              width: 10,
            ),
            RoundedOutlinButton(
                onpressed: () {},
                text: "Crypto",
                color: Colors.white,
                width: 0.26)
          ],
        ),
      );
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<bool> isSelected = [true, false, false];
  List<bool> isSelectedVSS = [true, false, false];
  List<Map<String, dynamic>> maplist = [
    {
      'image': 'assets/imagemen1.png',
      'flagimage': 'assets/flag1.png',
      'titleName': 'Wade Warren',
      'profitValue': '\$ 17,262',
      'ratingValue': '5.0',
      'GrowthValue': '163.5%'
    },
    {
      'image': 'assets/profile2.png',
      'flagimage': 'assets/flag2.png',
      'titleName': 'Floyd Miles',
      'profitValue': '\$ 12,345',
      'ratingValue': '4.0',
      'GrowthValue': ' 143.4%'
    },
    {
      'image': 'assets/profile3.png',
      'flagimage': 'assets/flag3.png',
      'titleName': 'Devon Lane',
      'profitValue': '454343',
      'ratingValue': '4.0',
      'GrowthValue': '\$10,475'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Color(0xff494949),
            ),
          )
        ],
        leadingWidth: 17,
        title: Text(
          'Leaders',
          style: TextStyle(color: Color(0xff494949)),
        ),
        iconTheme: IconThemeData(color: Color(0xff494949)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              fristRow(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              listContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget listContainer() => Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: maplist.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Color(0xff909090), blurRadius: 2)
                    ]),
                height: MediaQuery.of(context).size.height * 0.22,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.021,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                image: DecorationImage(
                                    image:
                                        AssetImage(maplist[index]['image']))),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            maplist[index]['flagimage']))),
                              )
                            ])),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.002,
                            ),
                            Text(
                              maplist[index]['titleName'],
                              style: TextStyle(
                                  color: Color(0xff0D62C5), fontSize: 16),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Profit : ',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff454343)),
                                ),
                                Text(
                                  maplist[index]['profitValue'],
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 19,
                                  width: 56,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        elevation: 0,
                                        primary: Color(0xff0D62C5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0))),
                                    child: Text(
                                      "Free",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Color(0xffF0AE2F),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Text(
                                  maplist[index]['ratingValue'],
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(children: [
                              Text(
                                'Growth: ',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff454343)),
                              ),
                              Text(
                                maplist[index]['GrowthValue'],
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff168FDE)),
                              ),
                            ]),
                            Container(
                              height: 40,
                              width: 100,
                              // decoration: BoxDecoration(
                              //     color: Colors.amber,
                              //     image: DecorationImage(
                              //         image: AssetImage('assets/Rectangle.png'))),

                              child: SvgPicture.asset(
                                'assets/graph1.svg',
                                height: 40,
                                width: 100,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Subscriber    ',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: '18   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff909090))),
                          TextSpan(
                              text: '|',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '  Trades   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff454343))),
                          TextSpan(
                              text: '5200   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff909090))),
                          TextSpan(
                              text: '|',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '  Type   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff454343))),
                          TextSpan(
                              text: 'Real   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff909090))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    SizedBox(
                      height: 23,
                      child: ToggleButtons(
                        // list of booleans
                        isSelected: isSelectedVSS,
                        // text color of selected toggle
                        selectedColor: Colors.white,
                        // text color of not selected toggle
                        color: Color(0xff494949),
                        // fill color of selected toggle
                        fillColor: Color(0xff168FDE),
                        // when pressed, splash color is seen
                        // splashColor: Colors.red,
                        // long press to identify highlight color
                        // highlightColor: Colors.orange,
                        // if consistency is needed for all text style
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        // border properties for each toggle
                        renderBorder: true,
                        borderColor: Color(0xff168FDE),
                        borderWidth: 01,
                        // borderRadius: BorderRadius.circular(20),
                        selectedBorderColor: Color(0xff168FDE),
// add widgets for which the users need to toggle
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('View',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text('Share',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text('Subscribe',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                        ],
// to select or deselect when pressed
                        onPressed: (int newIndex) {
                          setState(() {
                            // looping through the list of booleans values
                            for (int index = 0;
                                index < isSelectedVSS.length;
                                index++) {
                              // checking for the index value
                              if (index == newIndex) {
                                // one button is always set to true
                                isSelectedVSS[index] = true;
                              } else {
                                // other two will be set to false and not selected
                                isSelectedVSS[index] = false;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }));

  Widget fristRow() => Center(
        child: SizedBox(
          height: 35,
          child: ToggleButtons(
            // list of booleans
            isSelected: isSelected,
            // text color of selected toggle
            selectedColor: Colors.white,
            // text color of not selected toggle
            color: Color(0xff494949),
            // fill color of selected toggle
            fillColor: Color(0xff0D62C5),
            // when pressed, splash color is seen
            // splashColor: Colors.red,
            // long press to identify highlight color
            // highlightColor: Colors.orange,
            // if consistency is needed for all text style
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            // border properties for each toggle
            renderBorder: true,
            borderColor: Colors.black,
            borderWidth: 0.1,
            borderRadius: BorderRadius.circular(20),
            selectedBorderColor: Color(0xffE7E5E5),
// add widgets for which the users need to toggle
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('by Rating',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('By Subscribers',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('By Trades',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
            ],
// to select or deselect when pressed
            onPressed: (int newIndex) {
              setState(() {
                // looping through the list of booleans values
                for (int index = 0; index < isSelected.length; index++) {
                  // checking for the index value
                  if (index == newIndex) {
                    // one button is always set to true
                    isSelected[index] = true;
                  } else {
                    // other two will be set to false and not selected
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        ),
      );
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
