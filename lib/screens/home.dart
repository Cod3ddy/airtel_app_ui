import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _number = 0981898936;
  _getAirtimeBalance(balance) {
    return balance;
  }

  _getVoiceBalance(balance) {
    return balance;
  }

  _getDataBalance(balance) {
    return balance;
  }

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 300),
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: height + 150,
              width: MediaQuery.of(context).size.width,
              child: AppBar(
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child:
                                  Image.asset('assets/icons/airtel_appbar.png'),
                            ),
                            const Text(
                              "airtel",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.qr_code_scanner_sharp),
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications),
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
            Container(),
            Positioned(
              top: 100.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 15.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Prepaid - $_number",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Text(
                            "Manage Account",
                            style: TextStyle(
                              color: Color.fromRGBO(82, 134, 227, 1),
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _getAirtimeBalance(191.04).toString(),
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "MWK",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 242, 16, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const Text(
                                "Airtime Balance",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              VerticalDivider(
                                width: 20,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.grey,
                                thickness: 1.5,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _getVoiceBalance(0).toString(),
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "Mins",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 242, 16, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Text(
                                "Voice Balance",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _getDataBalance(845.35).toString(),
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "MB",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 242, 16, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const Text(
                                "Data Balance",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(20, 255, 0, 0),
                            ),
                            width: 150,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.badge,
                                  color: Theme.of(context).primaryColor,
                                ),
                                const Text(
                                  'Buy Bundles',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                    letterSpacing: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(20, 255, 0, 0),
                            ),
                            width: 150,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bolt_sharp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                const Text(
                                  'Self Recharge',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 150,
      //   title: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Row(
      //             children: [
      //               SizedBox(
      //                 height: 50,
      //                 width: 50,
      //                 child: Image.asset('assets/icons/airtel_appbar.png'),
      //               ),
      //               const Text(
      //                 "airtel",
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 35,
      //                   fontFamily: 'Ubuntu',
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.qr_code_scanner_sharp),
      //                 color: Colors.white,
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.notifications),
      //                 color: Colors.white,
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.1,
      //         width: width * 1,
      //       )
      //     ],
      //   ),
      //   backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
      // ),
      backgroundColor: const Color.fromARGB(255, 70, 20, 17),
      appBar: _appBar(AppBar().preferredSize.height),
      // body: Column(
      //   children: [
      //     Stack(children: <Widget>[
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(5),
      //           color: const Color.fromARGB(255, 58, 11, 110),
      //         ),
      //         width: width * 1,
      //         height: height * 0.1,
      //       ),
      //       Positioned(
      //         bottom: 30,
      //         right: 30,
      //         child: Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(5),
      //             color: const Color.fromARGB(255, 0, 255, 5),
      //           ),
      //           width: width * 1,
      //           height: height * 0.1,
      //         ),
      //       ),
      //     ])
      //   ],
      // ),
    );
  }
}
