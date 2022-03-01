import 'package:cosnapper/screens/homescreen.dart';
import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
    final TextEditingController _text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,
              width: double.infinity,),
              
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(AppAssets.logo),
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  AppString.textone_l,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 35,
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 80,
              width: double.infinity,),
              
              SizedBox(
                height: 25,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  AppString.texttwo_l,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 16,
                      fontFamily: 'Poppins'),
                ),
              ),
              const SizedBox(height: 30,
              width: double.infinity,),
              SizedBox(
                 width: MediaQuery.of(context).size.width, 
                height: 50,
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppColor.blackColor),
                  controller: _text,
                  obscureText: true,
                  
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                  
                    filled: true,
                    fillColor: AppColor.whiteColor,
                    
                    //labelText: 'Enter the Value',
                    
                  ),
                            ),
                ),
              ),
              const SizedBox(height: 5,
              width: double.infinity,),
              SizedBox(
                 width: MediaQuery.of(context).size.width, 
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.whiteColor
                    ),
                    onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));

                    },
                    child: const Text(AppString.zugang_l,style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',color: AppColor.blueIconColor),)),
                ),
              ),
              const SizedBox(height: 50,
              width: double.infinity,),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: (){
                     _BottomSheet(context);
                  },
                  child: const Text(
                    AppString.textthree_l,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 16,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
   void _BottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        color: AppColor.blueColor,
                                      ),
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.close_outlined,
                                          size: 10,
                                          color: AppColor.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                    ],
                  ),
                  

Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 5.0),
                    child: Row(
                      children: 
                        [Expanded(
                          child: Text(
                            
                          "Dein persönlicher Zugang zu deinen Bilder Findet sich auf der Karte, die du nach dem Shooting von unserem CoSnapper bekommen hast",
                          style:  TextStyle(
                          
                            color: AppColor.blueColor,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          
                          ),
                          maxLines: 5,
                          
                          textAlign: TextAlign.center,                        ),
                        ),
                      ],
                    ),
                  ),

SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(AppAssets.arrow),
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(AppAssets.card),
              ),




                  
                ]),
              ));
        });
  }
}

