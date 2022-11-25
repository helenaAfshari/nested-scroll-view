import 'package:flutter/material.dart';

class NestedScrollVieww extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Scaffold(
        body: DefaultTabController(
          length: 1,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text("NestedScroll", style:TextStyle(color: Color.fromARGB(255, 211, 145, 145))),
                    ]),
                backgroundColor: Color.fromARGB(137, 5, 0, 18),
                pinned: true,
                floating: true,
                expandedHeight: 100,
                bottom: const TabBar(
                  tabs: [
                  Icon(Icons.camera_alt_outlined),
                   Icon(Icons.camera_alt_outlined),
                    Icon(Icons.camera_alt_outlined),                 
                  ],
                ),
              ),
            ], body: const SingleChildScrollView(
                 
            ),
           
          ),
        ),
      
      ),
   );
   
  }

}