import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _number = 0981898936;
  double multiplier = 0.1;
  _getAirtimeBalance(balance) {
    return balance;
  }

  _getVoiceBalance(balance) {
    return balance;
  }

  _getDataBalance(balance) {
    return balance;
  }

  _appBarVersion1(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 500),
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
                                fontSize: 30,
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
                height: MediaQuery.of(context).size.height * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(50, 33, 33, 33),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(
                            width: 10,
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _getVoiceBalance(1000).toString(),
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
                          SizedBox(
                            width: 10,
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.grey.shade400,
                              thickness: 1,
                            ),
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
                              color: const Color.fromARGB(10, 255, 0, 0),
                            ),
                            width: 150,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.archive_outlined,
                                  color: Theme.of(context).primaryColor,
                                ),
                                const Text(
                                  'Buy Bundles',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(10, 255, 0, 0),
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
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 158, 158, 158),
                            ),
                            width: 20,
                            height: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 158, 158, 158),
                            ),
                            width: 20,
                            height: 7,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 330.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(50, 33, 33, 33),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                  color: Colors.white,
                ),
                width: 200,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.line_style,
                                color: Color.fromARGB(255, 242, 16, 0),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Airtel Money",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 242, 16, 0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "MWK",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 242, 16, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "XXXXXXXXXX",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Colors.black, width: 2),
                            ),
                            child: const Text(
                              "view Balance",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 302.0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10,
                      height: 28,
                      child: VerticalDivider(
                        color: Color.fromARGB(200, 158, 158, 158),
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 28,
                      child: VerticalDivider(
                        color: Color.fromARGB(200, 158, 158, 158),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 329.0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Color.fromARGB(190, 71, 71, 71),
                      size: 6,
                      weight: 10,
                    ),
                    Icon(
                      Icons.circle_outlined,
                      color: Color.fromARGB(190, 71, 71, 71),
                      size: 6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  _appBar(screenWidth, screenHeight) {
    return AppBar(
      scrolledUnderElevation: 0,
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
                    child: Image.asset('assets/icons/airtel_appbar.png'),
                  ),
                  const Text(
                    "airtel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
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
    );
  }

  _bodyUI(screenWidth, screenHeight) {
    return ListView(
      children: [
        SizedBox(
          height: 400,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  width: MediaQuery.of(context).size.width * 1,
                  height: 100,
                ),
              ),
              Container(),
              //manage accounts container - top most container
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.98,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(50, 33, 33, 33),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 6),
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          top: 15.0,
                          right: 10.0,
                        ),
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
                            SizedBox(
                              height: 36,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Manage Account",
                                  style: TextStyle(
                                    color: Color.fromRGBO(82, 134, 227, 1),
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              width: 10,
                              height: 50,
                              child: VerticalDivider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _getVoiceBalance(1000).toString(),
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
                            SizedBox(
                              width: 10,
                              height: 50,
                              child: VerticalDivider(
                                color: Colors.grey.shade400,
                                thickness: 1,
                              ),
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
                                color: const Color.fromARGB(10, 255, 0, 0),
                              ),
                              width: 150,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.archive_outlined,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  const Text(
                                    'Buy Bundles',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(10, 255, 0, 0),
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
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 158, 158, 158),
                              ),
                              width: 20,
                              height: 7,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 158, 158, 158),
                              ),
                              width: 20,
                              height: 7,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //view balance container
              Positioned(
                top: 233,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(50, 33, 33, 33),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 3.0),
                      )
                    ],
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.98,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.line_style,
                                  color: Color.fromARGB(255, 242, 16, 0),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Airtel Money",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 242, 16, 0),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "MWK",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 242, 16, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "XXXXXXXXXX",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.black, width: 2),
                                ),
                                child: const Text(
                                  "view Balance",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //chains holding view balance container
              Positioned(
                top: 203.0,
                left: screenWidth * 0.1,
                right: screenWidth * 0.1,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                      height: 28,
                      child: VerticalDivider(
                        color: Color.fromARGB(200, 158, 158, 158),
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                      height: 28,
                      child: VerticalDivider(
                        color: Color.fromARGB(200, 158, 158, 158),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              //empty circle linked to vertical dividers
              Positioned(
                top: 230.0,
                left: screenWidth * multiplier,
                right: screenWidth * multiplier,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Color.fromARGB(190, 71, 71, 71),
                      size: 6,
                      weight: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.circle_outlined,
                      color: Color.fromARGB(190, 71, 71, 71),
                      size: 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 400,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 70, 20, 17),
      appBar: _appBar(width, height),
      body: _bodyUI(width, height),
    );
  }
}
