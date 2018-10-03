import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   
    final key = new GlobalKey<ScaffoldState>();
   
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("Flutter is awesome ❥"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.send),
          onPressed: () => debugPrint("tapped")),

          new IconButton(icon: new Icon(Icons.sentiment_satisfied),
          onPressed: () => debugPrint("tapped2")),
        ],
        ),

        backgroundColor: Colors.grey.shade200,
        body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                        new Text("1st" , textDirection: TextDirection.ltr,
                        style: new TextStyle(color: Colors.blueGrey),),
                        new Text("2nd" , textDirection: TextDirection.ltr,
                        style: new TextStyle(color: Colors.blueGrey),),
                        new Text("third" , textDirection: TextDirection.ltr,
                        style: new TextStyle(color: Colors.blueGrey),),

                        new InkWell(
                          child: new Text("clickable",style: new TextStyle(fontSize: 15.5 ),),
                          onTap: () => key.currentState.showSnackBar(showSnake("this works !!")),
                                  ),


                       new FlatButton(
                         child:new Text("Button",style: new TextStyle(color: Colors.white),),
                         
                         onPressed: () => key.currentState.showSnackBar(showSnake("and this works !!")),
                         color: Colors.lightGreen.shade500,
                         highlightColor: Colors.lightGreen.shade400),


                
                        new InkWell(
                          child: Container( // red circle
                          child: Text("circle button",style: new TextStyle(color:Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                          decoration: BoxDecoration(
                          color: Colors.lightGreen.shade500,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(23.0),
                                 ), 
                                ),
                          padding: EdgeInsets.all(16.0),
                               ),
                          onTap: () => key.currentState.showSnackBar(showSnake("and also this works !!")),
                          borderRadius: BorderRadius.all(
                              const Radius.circular(15.0),
                                 ),                        
                        ),
                        
            ],
          ),
        ),

        floatingActionButton: new FloatingActionButton(
          onPressed: () => showToast("and this also works"),
          backgroundColor: Colors.lightGreen,
          tooltip: "it works !",
          child: new Icon(Icons.chat),
        ),


        bottomNavigationBar: new BottomNavigationBar(type: BottomNavigationBarType.fixed ,items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.settings),title: new Text("settings")),
          new BottomNavigationBarItem(icon: new Icon(Icons.settings_phone),title: new Text("phone")),
          new BottomNavigationBarItem(icon: new Icon(Icons.screen_share),title: new Text("screen share")),
          new BottomNavigationBarItem(icon: new Icon(Icons.share),title: new Text("share")),
        ], onTap: (int i) => debugPrint("icon $i"),fixedColor: Colors.lightGreen,),

    );
     
     

     
      // child: new Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: <Widget>[
      //     const Text("jj"),
      //     const Text("kman jj"),
      //     const Text("jj kman"),
          
      //   ],
      // ),
 



      // child:new Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
       
      //   children: <Widget>[
          // new Text("1st" , textDirection: TextDirection.ltr,
          // style: new TextStyle(color: Colors.blueGrey),),

      //     new Text("2nd" , textDirection: TextDirection.ltr,
      //     style: new TextStyle(color: Colors.black38),),

      //     new Container(
      //       color:Colors.deepOrange.shade200,
      //       alignment: Alignment.bottomLeft,
      //       child: new Text("third" , textDirection: TextDirection.ltr,
      //              style: new TextStyle(color: Colors.amber[800]),),
      //     )
      //   ],
      // )
   
  }


  SnackBar showSnake(var txt){
    return new SnackBar(
      content: new Text("$txt",textAlign: TextAlign.center),
      );
  }


   showToast(var txt){
      Fluttertoast.showToast(
        msg: "$txt",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        bgcolor: "#808080",
        textcolor: "#ffffff",
        timeInSecForIos: 1
    );
  }




}