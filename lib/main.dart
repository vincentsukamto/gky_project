import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());  
}

class myApp extends StatelessWidget {
  List<Text> menuList = [
      Text("Presensi"),
      Text("Download PDF"),
      Text("Comming Soon"),
      Text("Comming Soon"),
  ];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GKY Puri"),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: SafeArea( 
            child:Column(
              children: [
                ListTile(
                  title: Text("Menu"),
                  leading: Icon(Icons.home), //add icon
                      onTap: (){ 
                        //action on press
                      },
                ),
                ExpansionTile(
                  title: Text("Ibadah"),
                  leading: Icon(Icons.church), //add icon
                  childrenPadding: EdgeInsets.only(left:60), //children padding
                  children: [
                    ListTile( 
                      title: Text("Child Category 1"),
                        onTap: (){ 
                            //action on press
                        },
                    ),

                    ListTile( 
                      title: Text("Child Category 2"),
                      onTap: (){ 
                        //action on press
                      },
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout), //add icon
                      onTap: (){ 
                        //action on press
                      },
                ),
              ],
            )
          ),
        ),
        // BODY 
        body:
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return ListTile( 
                  title: Center(
                    child:
                    menuList[index],
                  ),
                  onTap: (){
                    //action on press
                  },
                );
              }),
            ),
        
      ),
    );
  }
}



            