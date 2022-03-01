import 'package:cosnapper/screens/finalcheckoutscreen.dart';
import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController _cardnum = TextEditingController();
  final TextEditingController _cvc = TextEditingController();
  final TextEditingController _date = TextEditingController();
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
                                  onPressed: () {
                                    Navigator.pop(context);
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
                                    image: AssetImage(AppAssets.circleblue),
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FinalCheckoutScreen()));
                                  },
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
                                    child: const Text(
                                      AppString.bezahlung,
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
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Zahlung',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),

                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                                        width: MediaQuery.of(context).size.width,
                                        child: Image.asset(AppAssets.stripe),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                                        width: MediaQuery.of(context).size.width,
                                        child: Image.asset(AppAssets.paypal),
                          ),
                        )
                      ],
                    ),
                  ),


                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Card Information',
                        style: TextStyle(
                          color: AppColor.blueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      children: [
                        Expanded(
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: TextField(
                              style: const TextStyle(
                                  fontSize: 16, color: AppColor.blueColor),

                              controller: _cardnum,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.left,

                              // ignore: prefer_const_constructors

                              decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.blueColor, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.2),
                                      width: 1.0),
                                ),
                                hintText: 'Card Number',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .hintColor
                                        .withOpacity(0.2)),
                                //filled: true,

                                //fillColor: AppColor.whiteColor,

                                //labelText: 'Enter the Value',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: TextField(
                              style: const TextStyle(
                                  fontSize: 16, color: AppColor.blueColor),

                              controller: _date,
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.datetime,

                              // ignore: prefer_const_constructors

                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColor.blueColor,
                                ),

                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.blueColor, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.2),
                                      width: 1.0),
                                ),
                                hintText: 'Exp. Date',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .hintColor
                                        .withOpacity(0.2)),
                                //filled: true,

                                //fillColor: AppColor.whiteColor,

                                //labelText: 'Enter the Value',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: TextField(
                              style: const TextStyle(
                                  fontSize: 16, color: AppColor.blueColor),

                              controller: _cvc,
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.number,

                              // ignore: prefer_const_constructors

                              decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.blueColor, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .hintColor
                                          .withOpacity(0.2),
                                      width: 1.0),
                                ),
                                hintText: 'VCC Number',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .hintColor
                                        .withOpacity(0.2)),
                                //filled: true,

                                //fillColor: AppColor.whiteColor,

                                //labelText: 'Enter the Value',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                          height: 100,
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const FinalCheckoutScreen()));
                          },
                          child: const Text(
                            AppString.weiter,
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
