import 'package:flutter/material.dart';
 class AboutUs extends StatefulWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(

            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
              ),
              color: Colors.blue,
                boxShadow: [
            new BoxShadow(
            color: Colors.black45.withOpacity(0.3),
          offset: new Offset(-10, 0.0),
          blurRadius: 20.0,
          spreadRadius: 4.0
      ),]
            ),
          child: Stack(
            children: [
              Positioned(
                  top:80,
                  left: 0,
                  child: Container(
                height: 80,
                    width: 280,
                    decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                    ),
              ),
              ),
              Positioned(
              top: 110,
              left: 20,
              child: Text("About",style: TextStyle(fontSize: 35,color: Colors.blue, fontWeight: FontWeight.bold,),))
            ],
          ),
          ),
          SizedBox(height: 12,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black45.withOpacity(0.3),
                                  offset: new Offset(-10, 0.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0
                              )
                            ]
                        ),
                      ),
                    )
                ),
                Positioned(
                top: 5,
                left: 10
                ,child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/s2.png"),
                      )
                    ),
                  ),
                ),
                ),
                Positioned( top: 25,
                    left: 160,
                    
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Developed By:",style: TextStyle(fontSize: 17,color: Colors.black45),),
                          Text("Rebaz Awat & Mhamad Awat",style: TextStyle(fontSize: 17,color: Colors.black45),),
                          Divider(color: Colors.black45,),
                          Text("Designed by:",style: TextStyle(fontSize: 17,color: Colors.black45),),
                          Text("Zhiwar Anwar",style: TextStyle(fontSize: 17,color: Colors.black45),),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Expanded(child:MediaQuery.removePadding(context: context,
            removeTop: true,
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade700,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                        ),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.black45.withOpacity(0.3),
                              offset: new Offset(-10, 0.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0
                          ),
                        ]
                    ),
                    padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About the app",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 2,),
                        Text('This app is Like a path for travelers that wants to visit Tourism Places in Kurdistan and get good informations about places that wants to travels for, or book hotels that make Travelers trip easier.'
                          ,style: TextStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 25),
                  height: 200,
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade700,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80),
                        ),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.black45.withOpacity(0.3),
                              offset: new Offset(-10, 0.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0
                          ),
                        ]
                    ),
                    padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Who we are",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 2,),
                        Text('we are 3 Students from Faculity Software engineering, we came up with idea to developing an application in order to solve problems that tourists face during their trip in Kurdistan.'
                          ,style: TextStyle(color: Colors.white,fontSize: 14),),],
                    ),
                  ),
                ),
            Container(
              height: 100,
              child: Card(child: ListTile( title: Text("Contact Us: rebazawat10@gmail.com"), ), elevation: 8, shadowColor: Colors.green, margin: EdgeInsets.all(20), shape: OutlineInputBorder( borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue, width: 1) ),
              ),
            ),
              ],
            ),
          ),

          )
        ],
      ),
    );
  }
}
