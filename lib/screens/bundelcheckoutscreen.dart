import 'package:flutter/material.dart';
import 'package:cosnapper/screens/enteraddressscreen.dart';
import 'package:cosnapper/utils/constants.dart';

class BundelCheckoutScreen extends StatefulWidget {
  const BundelCheckoutScreen({ Key? key }) : super(key: key);

  @override
  _BundelCheckoutScreenState createState() => _BundelCheckoutScreenState();
}

class _BundelCheckoutScreenState extends State<BundelCheckoutScreen> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              elevation: 0.0,
              // ignore: prefer_const_constructors
              centerTitle: true,
              title: const Text(
                AppString.textone_cvc,
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
        children: 
          [
           Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: AppColor.whiteColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                        AppAssets.shoppingcart,
                                        color: AppColor.whiteColor,
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
                                      image: AssetImage(AppAssets.circlewhite),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  height: 80,
                                  width: 80,
                                  child: IconButton(
                                    onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterAddressScreen()));
                                    
                                    },
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
                                      image: AssetImage(AppAssets.circlewhite),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  height: 80,
                                  width: 80,
                                  child: IconButton(
                                    onPressed: () {},
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
                                      image: AssetImage(AppAssets.circlewhite),
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
                                        color: AppColor.blueColor,
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
                                      child: const Text(
                                        AppString.circletextone,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: AppColor.blueColor,
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
                                      child: Text(
                                        AppString.bestatigt,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Theme.of(context)
                                                .hintColor
                                                .withOpacity(0.2),
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
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 5.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Stack(
                                        children: 
                                          [Container(
                                            height: 100,
                                            width: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                image: DecorationImage(
                                                    image: const AssetImage(
                                                        AppAssets.womenone),
                                                    fit: BoxFit.contain)),
                                            alignment: Alignment.topRight,
                                          ),
                                          Positioned(
                                            top: 40,
                                            child: Container(
                                              height: 100,
                                              width: 100,
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                      image: const AssetImage(
                                                          AppAssets.womenone),
                                                      fit: BoxFit.contain)),
                                              alignment: Alignment.topRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10.0, left: 10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          // ignore: prefer_const_constructors
                                          Container(
                                            child: const Text(
                                              AppString.buncletag_cvc,
                                              style: TextStyle(
                                                  color: AppColor.blueColor,
                                                  fontSize: 18,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const Text(
                                            AppString.bundleammount,
                                            style: TextStyle(
                                              color: AppColor.blueColor,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        color: AppColor.blueColor,
                                      ),
                                      alignment: Alignment.topRight,
                                      child: const Icon(
                                        Icons.close_outlined,
                                        size: 20,
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        
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
                            
                              color: AppColor.whiteColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    const Text(
                                      AppString.total,
                                      style: TextStyle(
                                        color: AppColor.blueColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    const Text(
                                      AppString.bundleammount,
                                      style: TextStyle(
                                        color: AppColor.blueColor,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                           Container(
                                padding: EdgeInsets.only(bottom: 15),
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
                                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterAddressScreen()));
                                        },
                                        child: const Text(
                                          AppString.checkout,
                                          style: TextStyle(
                                              fontSize: 18,
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
