import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_web_portfolio/Wigets/utils.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: getScreenSize(context).height,
        width: getScreenSize(context).width,
        child: Stack(
            children: <Widget>[
              ClipPath(
                  child: Container(
                    color: Colors.blue[400],
                    height: 140,
                    width: getScreenSize(context).width,
                  ),
                  clipper: WaveClipperOne()
              ),
              ClipPath(
                child: Container(
                  color: Colors.blue[600],
                  height: 120,
                  width: getScreenSize(context).width,
                ),
                clipper: WaveClipperTwo(),
              ),
              Positioned(
                child: ClipPath(
                  child: Container(
                    color: Colors.blue[400],
                    height: 80,
                    width: getScreenSize(context).width,
                  ),
                  clipper: WaveClipperTwo(reverse: true),
                ),
                bottom: 0,
                left: 0,
              ),
              Positioned(
                child: ClipPath(
                  child: Container(
                    color: Colors.blue[600],
                    height: 90,
                    width: getScreenSize(context).width,
                  ),
                  clipper: WaveClipperOne(reverse: true),
                ),
                bottom: 0,
                left: 0,
              ),

              getScreenSize(context).width < 580 ?
                  Container(
                    width: getScreenSize(context).width,
                    height: getScreenSize(context).height,
                    child: Column(
                      children: <Widget>[
                    Container(
                    margin: EdgeInsets.only(top: 64),
                    height: 240,
                    width: 240,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset("images/3.png",fit: BoxFit.contain,),
                    )
                    ),
                        SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Flutter",
                                  style: TextStyle(
                                      fontSize: getScreenSize(context).width <580 ? 32 :64 ,
                                      fontWeight: FontWeight.w700,
                                      color:Colors.blue)
                                ),
                                SizedBox(height: 8,),
                                Text("Flutter is an open-source UI software development kit created by Google. "
                                    "It is used to develop applications for Android, "
                                    "iOS, Windows, Mac, Linux, Google Fuchsia[5]"
                                    " and the web.",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 1.0,
                                        color:Colors.grey[600])
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                FlatButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.import_contacts),
                                    label: Text("See All Documents"),
                                  color: Colors.grey[800],
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32))
                                  ),
                                )

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ):
              Container(
                height: getScreenSize(context).height,
                width: getScreenSize(context).width,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 64),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Flutter",
                                style: TextStyle(
                                    fontSize: 64 ,
                                    fontWeight: FontWeight.w700,
                                    color:Colors.blue)
                            ),
                            SizedBox(height: 8,),
                            Text("Flutter is an open-source UI software development kit created by Google. "
                                "It is used to develop applications for Android, "
                                "iOS, Windows, Mac, Linux, Google Fuchsia[5]"
                                " and the web.",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1.0,
                                    color:Colors.grey[600])
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.import_contacts),
                              label: Text("See All Documents"),
                              color: Colors.grey[800],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(32))
                              ),
                            )

                          ],
                        ),


                      )
                    ),
                    Expanded(
                        child: Container(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.asset("images/3.png",fit: BoxFit.contain,),
                          ),
                        )
                    ),
                  ],
                ),

              )


        ],
      ),
    ),

    );
  }
}
