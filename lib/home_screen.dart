import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
  backgroundColor: Colors.black,

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: false,
            pinned: true,

            snap: false,


            backgroundColor: Colors.black,
            expandedHeight: Platform.isAndroid ?size.height / 2.4 : size.height / 3 ,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background: SizedBox(
                width: size.width,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.only(top: 50,right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: IconButton(
                              icon: const Icon(Icons.notification_add,color: Color(0xFF63c01f),), onPressed: () {  },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset('assets/images/person1.jpeg',height: 55,width:55,fit: BoxFit.cover,),

                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: const Text("Learning GraphQL Merged APIs",
                          style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,letterSpacing: 2),),
                      )
                    ],
                  ),
                ),
              ),
            ),


          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height/3,

                            decoration: BoxDecoration(
                                color: Color(0xFF282828),
                                borderRadius: BorderRadius.circular(50)

                            ),


                          ),
                          SvgPicture.asset('assets/images/svg_bg_2.svg',height: size.height/3,width:size.width,fit: BoxFit.fill,color: Color(0xFF63c01f),),
                          Positioned(


                              left: 170,
                              top: 30,




                              // child: Transform(transform: Matrix4.rotationY(math.pi),
                              child: Image.asset('assets/images/lambo_green.webp',height:300)),
                        ],
                      ),
                      Positioned(
                          bottom: Platform.isAndroid ? 200: 240,
                          left: 20,
                          child: Row(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(1000),


                                child: Image.asset(
                                  'assets/images/lambo_logo.jpeg',

                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,


                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Color:'),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color:Color(0xFF63c01f),
                                              shape: BoxShape.circle,
                                              border:Border.all(color: Colors.white)
                                          ),
                                        )
                                      ],
                                    ),
                                    Text('Lamborghini Urus',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                                  ],
                                ),
                              )

                            ],
                          )),
                      Positioned(
                          bottom: Platform.isAndroid ? 130 : 170,
                          left: 20,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(1000),
                                        child: Image.asset('assets/images/person3.jpeg',height: 25,width: 25,fit: BoxFit.cover,),

                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person1.jpeg',height: 25,width:25,fit: BoxFit.cover,),

                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 40),
                                        child: ClipRRect(

                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person2.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child:Text('4,9',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  )
                                ],
                              ),
                              const Text('82% Recommend')
                            ],
                          )),
                      Positioned(
                          bottom:Platform.isAndroid ? 220: 260,

                          left: Platform.isAndroid ? 290: 300,
                          child:Row(
                            children: [
                              Image.asset('assets/images/battery.png',height: 30,color: Colors.black,),
                              Text('390 km',style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(bottom: 30,left: 20),
                        child:Row(

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1 day rental',style: TextStyle(color: Colors.grey),),
                                Text("\$1200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                              ],
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 70),
                              child: Transform(transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset('assets/images/back.png',height: 40,width:40,color: Colors.white,)),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height/3,

                            decoration: BoxDecoration(
                                color: Color(0xFF282828),
                                borderRadius: BorderRadius.circular(50)

                            ),


                          ),
                          SvgPicture.asset('assets/images/svg_bg_2.svg',height: size.height/3,width:size.width,fit: BoxFit.fill,color: Color(0xFFf3c842)),
                          Positioned(


                              left: 200,
                              bottom: -10,





                              // child: Transform(transform: Matrix4.rotationY(math.pi),
                              child: Image.asset('assets/images/lambo_orange.webp',)),
                        ],
                      ),
                      Positioned(

                          bottom: Platform.isAndroid ? 210: 240,
                          left: 20,
                          child: Row(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(1000),


                                child: Image.asset(
                                  'assets/images/lambo_logo.jpeg',

                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,


                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Color:'),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFf3c842),
                                              shape: BoxShape.circle,
                                              border:Border.all(color: Colors.white)
                                          ),
                                        )
                                      ],
                                    ),
                                    Text('Lamborghini Urus',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                                  ],
                                ),
                              )

                            ],
                          )),
                      Positioned(
                          bottom:Platform.isAndroid ? 140: 170,
                          left: 20,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(1000),
                                        child: Image.asset('assets/images/person3.jpeg',height: 25,width: 25,fit: BoxFit.cover,),

                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person1.jpeg',height: 25,width:25,fit: BoxFit.cover,),

                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 40),
                                        child: ClipRRect(

                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person2.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child:Text('3.9',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  )
                                ],
                              ),
                              const Text('82% Recommend')
                            ],
                          )),
                      Positioned(
                          bottom:Platform.isAndroid ? 220: 260,

                          left: Platform.isAndroid ? 290: 300,
                          child:Row(
                            children: [
                              Image.asset('assets/images/battery.png',height: 30,color: Colors.black,),
                              Text('670 km',style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(bottom: 30,left: 20),
                        child:Row(

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1 day rental',style: TextStyle(color: Colors.grey),),
                                Text("\$900",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                              ],
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 70),
                              child: Transform(transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset('assets/images/back.png',height: 40,width:40,color: Colors.white,)),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height/4,

                            decoration: BoxDecoration(
                                color: Color(0xFF282828),
                                borderRadius: BorderRadius.circular(50)

                            ),


                          ),
                          SvgPicture.asset('assets/images/svg_bg_2.svg',height: size.height/4,width:size.width,fit: BoxFit.fill,color: Color(0xFF0074e0),),
                          Positioned(


                              left: 200,
                              bottom: -70,






                              // child: Transform(transform: Matrix4.rotationY(math.pi),
                              child: Image.asset('assets/images/porshe.png',)),
                        ],
                      ),
                      Positioned(
                          bottom: Platform.isAndroid ? 140: 170,
                          left: 20,
                          child: Row(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(1000),


                                child: Image.asset(
                                  'assets/images/lambo_logo.jpeg',

                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,


                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Color:'),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color:Color(0xFF0074e0),
                                              shape: BoxShape.circle,
                                              border:Border.all(color: Colors.white)
                                          ),
                                        )
                                      ],
                                    ),
                                    Text('Porshe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                                  ],
                                ),
                              )

                            ],
                          )),
                      Positioned(
                          bottom:Platform.isAndroid ? 90: 110,
                          left: 20,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(1000),
                                        child: Image.asset('assets/images/person1.jpeg',height: 25,width:25,fit: BoxFit.cover,),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person2.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 40),
                                        child: ClipRRect(

                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person3.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child:Text('4,3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  )
                                ],
                              ),
                              const Text('82% Recommend')
                            ],
                          )),
                      Positioned(
                          bottom:Platform.isAndroid ?160: 190,

                          left: Platform.isAndroid ? 280: 300,
                          child:Row(
                            children: [
                              Image.asset('assets/images/battery.png',height: 30,color: Colors.black,),
                              Text('450 km',style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )),

                      Container(
                        padding: EdgeInsets.only(bottom: 30,left: 20),
                        child:Row(

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1 day rental',style: TextStyle(color: Colors.grey),),
                                Text("\$560",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                              ],
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 70),
                              child: Transform(transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset('assets/images/back.png',height: 40,width:40,color: Colors.white,)),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height/4,

                            decoration: BoxDecoration(
                                color: Color(0xFF282828),
                                borderRadius: BorderRadius.circular(50)

                            ),


                          ),
                          SvgPicture.asset('assets/images/svg_bg_2.svg',height: size.height/4,width:size.width,fit: BoxFit.fill,color: Color(0xFFf57c22),),
                          Positioned(


                              left: 150,
                              bottom: -30,






                              // child: Transform(transform: Matrix4.rotationY(math.pi),
                              child: Image.asset('assets/images/lambo1.png',)),
                        ],
                      ),
                      Positioned(
                          bottom:Platform.isAndroid ?140: 170,
                          left: 20,
                          child: Row(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(1000),


                                child: Image.asset(
                                  'assets/images/lambo_logo.jpeg',

                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,


                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Color:'),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFf57c22),
                                              shape: BoxShape.circle,
                                              border:Border.all(color: Colors.white)
                                          ),
                                        )
                                      ],
                                    ),
                                    Text('Lamborghini',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                                  ],
                                ),
                              )

                            ],
                          )),
                      Positioned(
                          bottom: Platform.isAndroid ? 90: 110,
                          left: 20,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(1000),
                                        child: Image.asset('assets/images/person1.jpeg',height: 25,width:25,fit: BoxFit.cover,),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person2.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 40),
                                        child: ClipRRect(

                                          borderRadius: BorderRadius.circular(1000),
                                          child: Image.asset('assets/images/person3.jpeg',height: 25,width: 25,fit: BoxFit.cover,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child:Text('4,3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  )
                                ],
                              ),
                              const Text('82% Recommend')
                            ],
                          )),
                      Positioned(
                          bottom: Platform.isAndroid ? 170: 190,

                          left:Platform.isAndroid ?280: 300,
                          child:Row(
                            children: [
                              Image.asset('assets/images/battery.png',height: 30,color: Colors.black,),
                              Text('570 km',style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(bottom: 30,left: 20),
                        child:Row(

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1 day rental',style: TextStyle(color: Colors.grey),),
                                Text("\$1200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                              ],
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 70),
                              child: Transform(transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset('assets/images/back.png',height: 40,width:40,color: Colors.white,)),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
