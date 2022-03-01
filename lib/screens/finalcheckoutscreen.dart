import 'package:cosnapper/screens/homescreen.dart';
import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

class FinalCheckoutScreen extends StatefulWidget {
  const FinalCheckoutScreen({Key? key}) : super(key: key);

  @override
  _FinalCheckoutScreenState createState() => _FinalCheckoutScreenState();
}

class _FinalCheckoutScreenState extends State<FinalCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // ignore: prefer_const_constructors
        centerTitle: true,
        title: const Text(
          AppString.checkout,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.blueColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.appbarColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.blueIconColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColor.whiteColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAssets.circlegrey),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: 80,
                                width: 80,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      AppAssets.shoppingcart,
                                      color: AppColor.blueColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                                child: Divider(
                                  color: Colors.grey[300],
                                  thickness: 2,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAssets.circlegrey),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: 80,
                                width: 80,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      AppAssets.shipped,
                                      color: AppColor.blueColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                                child: Divider(
                                  color: Colors.grey[300],
                                  thickness: 2,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAssets.circlegrey),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: 80,
                                width: 80,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: Image.asset(
                                      AppAssets.dollar,
                                      color: AppColor.blueColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                                child: Divider(
                                  color: Colors.grey[300],
                                  thickness: 2,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAssets.circleblue),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                height: 80,
                                width: 80,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      AppAssets.trick,
                                      color: AppColor.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 90,
                                    child: Text(
                                      AppString.circletextone,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.2),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    width: 90,
                                    child: Text(
                                      AppString.adresse,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.2),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    width: 90,
                                    child: Text(
                                      AppString.bezahlung,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Theme.of(context)
                                              .hintColor
                                              .withOpacity(0.2),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    width: 90,
                                    child: const Text(
                                      AppString.bestatigt,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: AppColor.blueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 5,
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                  ),
                  CircleAvatar(
                    radius: 71,
                    backgroundColor:
                        Theme.of(context).hintColor.withOpacity(0.2),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: AppColor.whiteColor,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor:
                            Theme.of(context).hintColor.withOpacity(0.2),
                        child: CircleAvatar(
                          radius: 64,
                          backgroundColor: AppColor.whiteColor,
                          child: Center(
                            child: Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(AppAssets.finish)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Vielen Dank',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 35,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                 Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                        [
                          Text(
                            
                          "Deine Bilder Konnen jetZt\nheruntergeladen werden. Ein\nDownload-Link wurde dir zusatzlich\nvia E-Mail zugesandt",
                          style:  TextStyle(
                            color: AppColor.blueColor,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          
                          ),

textAlign: TextAlign.center,                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  color: AppColor.whiteColor,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: AppColor.blueColor),
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            AppString.finalcheckoutbutton,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: AppColor.whiteColor),
                          )),
                    ),
                  ),
                ),

                // Your elements here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
