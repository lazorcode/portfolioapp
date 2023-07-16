import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.transparent,

      ),
      body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 72),
                child: ShaderMask(
                    shaderCallback: (rect){
                      return LinearGradient
                        (
                          begin:Alignment.center,
                          end: Alignment.bottomCenter,
                          colors:[Colors.black,Colors.transparent]).createShader(Rect.fromLTRB(0, 0, 800, 500));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset('assets/bg.png',height: 550,width: 400,)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.63),
                child: Column(
                  children: [
                    Text('Hello I Am',style: TextStyle(
                    color: Colors.white,fontSize: 22)),
                    SizedBox(height: 10,),
                    Text('Chris Hemsworth',style: TextStyle(
                        color: Colors.white,fontSize: 31,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Text('Software Developer',style: TextStyle(
                        color: Colors.white,fontSize: 22
                    ),),
                    SizedBox(height: 20,),
                    SizedBox(width: 100,child: TextButton(onPressed: (){}, child: Text('Hire Me'),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                          foregroundColor: Colors.black),)),
                    SizedBox(height: 30,),
                    Row(mainAxisAlignment:MainAxisAlignment.center
                      ,children: [

                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram, color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook, color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.github, color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.twitter, color: Colors.white,)),
                    ],

                    )
                  ],
                ),
              )
            ],
          )
      ),

    );
  }
}
