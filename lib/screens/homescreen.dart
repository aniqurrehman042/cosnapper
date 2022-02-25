import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;


  @override
  Widget build(BuildContext context) {
    tabController = TabController(length: 2, vsync: this);
    var tabBarItem =  Align ( alignment: Alignment.centerLeft,child:TabBar(
      isScrollable: true,
            controller: tabController,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).hintColor,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
            ),
      // ignore: prefer_const_literals_to_create_immutables
      tabs: [
          const Tab(
          icon:  Text('ALLE BILDER'),
        ),
         // ignore: prefer_const_constructors
         Tab(
          icon:  const Text('FAVORITEN'),
        ),
      ],
      indicatorColor: Colors.white,
    )
    );

    // ignore: unnecessary_new
    var listItem = new ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title:  Card(
            elevation: 5.0,
            child:  Container(
              alignment: Alignment.center,
              margin:  EdgeInsets.only(top: 10.0, bottom: 10.0),
              child:  Text("ListItem $index"),
            ),
          ),
          onTap: () {
            },
        );
      },
    );

    var gridView =  GridView.builder(
        itemCount: 20,
        gridDelegate:
             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return  GestureDetector(
            child:  Card(
              elevation: 5.0,
              child:  Container(
                alignment: Alignment.center,
                child:  Text('Item $index'),
              ),
            ),
            onTap: () {
            },
          );
        });

    return Scaffold(
      backgroundColor: AppColor.greyBackgroundColor,
      appBar: AppBar(
        bottomOpacity: 1.0,
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
        backgroundColor: const Color(0xFFf9fafb),
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
              onPressed: () {},
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
        bottom: tabBarItem,
      ),
      body: DefaultTabController(
        length: 2,
       child: TabBarView(
          controller: tabController,
          children: [
            listItem,
            gridView,
          ],
       )
      
      )
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
