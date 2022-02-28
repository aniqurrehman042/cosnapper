import 'dart:convert';

import 'package:cosnapper/models/womenmodel.dart';
import 'package:cosnapper/screens/checkoutscreen.dart';
import 'package:cosnapper/screens/imagedetailscreen.dart';
import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
 
 Widget fetchata(){
    String arrayObjsText =
        '{"tags": [{"id": 1,"image" : "assets/images/women.png"}, '
        '{"id": 2,"image" : "assets/images/womenone.png"}, '
        '{"id": 3,"image" : "assets/images/womentwo.png"}, '
        '{"id": 4,"image" : "assets/images/womenthree.png"}, '
        '{"id": 5,"image" : "assets/images/womenfour.png"}, '
        '{"id": 6,"image" : "assets/images/womenfive.png"}, '
        '{"id": 7,"image" : "assets/images/womensix.png"}, '
        '{"id": 8,"image" : "assets/images/womenseven.png"}]}';

 var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
    List<Tag> tagObjs =
    tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();
    return Container(
        decoration: const BoxDecoration(color: AppColor.whiteColor),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 25, width: double.infinity),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: AppColor.blueColor),
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                    },
                    child: const Text(
                      AppString.texttwo_h,
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: AppColor.whiteColor),
                    )),
              ),
            ),
            const SizedBox(height: 10, width: double.infinity),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: tagObjs.length,
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ImageDetailScreen()));
                        },
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    // ignore: unnecessary_string_interpolations
                                    image: AssetImage("${tagObjs[index].image}"),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 0, 15),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(AppAssets.heartempty),
                                      //fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //child: Text('Item $index'),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        )));
 }
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      fetchata();
    });
  }
  @override
  Widget build(BuildContext context) {
    tabController = TabController(length: 2, vsync: this);
    var tabBarItem = TabBar(
      isScrollable: true,
      controller: tabController,
      labelColor: Theme.of(context).primaryColor,
      unselectedLabelColor: Theme.of(context).hintColor.withOpacity(0.2),

      // ignore: prefer_const_literals_to_create_immutables
      tabs: [
        const Tab(
          icon: Text(
            'ALLE BILDER',
            style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
          ),
        ),
        // ignore: prefer_const_constructors
        Tab(
          icon: const Text(
            'FAVORITEN',
            style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
          ),
        ),
      ],
      indicatorColor: Colors.transparent,
    );

    // ignore: unnecessary_new

    var gridView = fetchata();
    var favouritegridView = Container(
        decoration: const BoxDecoration(color: AppColor.whiteColor),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 3,
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppAssets.womenone),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 0, 15),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(AppAssets.heartfilled),
                                      //fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //child: Text('Item $index'),
                          ),
                        ),
                        onTap: () {},
                      ),
                    );
                  }),
            )
          ],
        )));

    return Scaffold(
        backgroundColor: AppColor.greyBackgroundColor.withOpacity(0.1),
        appBar: AppBar(
          elevation: 0.0,
          // ignore: prefer_const_constructors
          centerTitle: true,
          title: const Text(
            AppString.textone_h,
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
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const CheckoutScreen()));
                       
                },
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.shoppingcart),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            )
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppColor.greyBackgroundColor.withOpacity(0.3),
                      child: tabBarItem))),
        ),
        body: DefaultTabController(
            length: 2,
            child: TabBarView(
              controller: tabController,
              children: [gridView, favouritegridView],
            ))
        // CustomTabView(
        //   initPosition: initPosition,
        //   itemCount: data.length,
        //   tabBuilder: (context, index) => Tab(text: data[index]),
        //   pageBuilder: (context, index) => Container(
        //       color: Colors.white, child: Center(child: GridView(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2),
        //     children: List.generate(10, (index) {
        //       return Container(
        //         height: 100.0,
        //         width: 100.0,

        //         child: Text(index.toString()),
        //       );
        //     }),
        //   ))),
        //   onPositionChange: (index) {
        //     print('current position: $index');
        //     initPosition = index;
        //   },
        //   // ignore: avoid_print
        //   onScroll: (position) => print('$position'), stub: Container(),
        // ),
        );
  }
}


// class CustomTabView extends StatefulWidget {
//   final int itemCount;
//   final IndexedWidgetBuilder tabBuilder;
//   final IndexedWidgetBuilder pageBuilder;
//   final Widget stub;
//   final ValueChanged<int> onPositionChange;
//   final ValueChanged<double> onScroll;
//   final int initPosition;

//   CustomTabView({
//     required this.itemCount,
//     required this.tabBuilder,
//     required this.pageBuilder,
//     required this.stub,
//     required this.onPositionChange,
//     required this.onScroll,
//     required this.initPosition,
//   });

//   @override
//   _CustomTabsState createState() => _CustomTabsState();
// }

// class _CustomTabsState extends State<CustomTabView>
//     with TickerProviderStateMixin {
//   late TabController controller;
//   late int _currentCount;
//   late int _currentPosition;

//   @override
//   void initState() {
//     _currentPosition = widget.initPosition;
//     controller = TabController(
//       length: widget.itemCount,
//       vsync: this,
//       initialIndex: _currentPosition,
//     );
//     controller.addListener(onPositionChange);
//     controller.animation!.addListener(onScroll);
//     _currentCount = widget.itemCount;
//     super.initState();
//   }

//   @override
//   void didUpdateWidget(CustomTabView oldWidget) {
//     if (_currentCount != widget.itemCount) {
//       controller.animation!.removeListener(onScroll);
//       controller.removeListener(onPositionChange);
//       controller.dispose();

//       if (widget.initPosition != null) {
//         _currentPosition = widget.initPosition;
//       }

//       if (_currentPosition > widget.itemCount - 1) {
//         _currentPosition = widget.itemCount - 1;
//         _currentPosition = _currentPosition < 0 ? 0 : _currentPosition;
//         if (widget.onPositionChange is ValueChanged<int>) {
//           WidgetsBinding.instance!.addPostFrameCallback((_) {
//             if (mounted) {
//               widget.onPositionChange(_currentPosition);
//             }
//           });
//         }
//       }

//       _currentCount = widget.itemCount;
//       setState(() {
//         controller = TabController(
//           length: widget.itemCount,
//           vsync: this,
//           initialIndex: _currentPosition,
//         );
//         controller.addListener(onPositionChange);
//         controller.animation!.addListener(onScroll);
//       });
//     } else if (widget.initPosition != null) {
//       controller.animateTo(widget.initPosition);
//     }

//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     controller.animation!.removeListener(onScroll);
//     controller.removeListener(onPositionChange);
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (widget.itemCount < 1) return widget.stub;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         // ignore: avoid_unnecessary_containers
//         Container(
//           child: TabBar(
//             isScrollable: true,
//             controller: controller,
//             labelColor: Theme.of(context).primaryColor,
//             unselectedLabelColor: Theme.of(context).hintColor,
//             indicator: BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                   color: Theme.of(context).primaryColor,
//                   width: 2,
//                 ),
//               ),
//             ),
//             tabs: List.generate(
//               widget.itemCount,
//               (index) => widget.tabBuilder(context, index),
//             ),
//           ),
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: controller,
//             children: List.generate(
//               widget.itemCount,
//               (index) => widget.pageBuilder(context, index),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   onPositionChange() {
//     if (!controller.indexIsChanging) {
//       _currentPosition = controller.index;
//       if (widget.onPositionChange is ValueChanged<int>) {
//         widget.onPositionChange(_currentPosition);
//       }
//     }
//   }

//   onScroll() {
//     if (widget.onScroll is ValueChanged<double>) {
//       widget.onScroll(controller.animation!.value);
//     }
//   }
// }
