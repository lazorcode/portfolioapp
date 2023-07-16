import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchieve(num,type){
    return  Row(
      children: [
        Text(num ,style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold
        ),), Container(margin:EdgeInsets.only(top: 10),child: Text(type))],
    );
  }
  mySpec(icon,tech){
    return Container(
      height: 89,
      width: 85,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.black87,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11)
        ),

        child: Container(

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: Colors.white,),
              SizedBox(height: 6,),
              Text(tech,style: TextStyle(color: Colors.white,fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu,color: Colors.white,),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text('Projects',style: TextStyle(
                  color: Colors.white,

              )),
              onPressed: (){
                Navigator.pushNamed(context, 'projects');
              },
            )),
            PopupMenuItem(child: TextButton(
              child: Text('About Me',style: TextStyle(
                color: Colors.white
              ),),
              onPressed: (){
                Navigator.pushNamed(context, 'about');
              },
            )),
          ],
        ),

        backgroundColor: Colors.transparent,

      ),
      body: SlidingUpPanel(
        minHeight: 260,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),topRight: Radius.circular(40)
        ),
        panel: Container(margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchieve('78', 'Projects'),
                    myAchieve('33', 'Messages'),
                    myAchieve('57', 'Clients')

                  ],
                ),
                SizedBox(height: 30,),
                Text('Specialised In',style: TextStyle(
                  fontSize: 21,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Column(
                  children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.smartphone_sharp, 'Flutter'),
                      mySpec(Icons.code, 'Java'),

                    ],
                  ),
                    SizedBox(height: 18,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        mySpec(Icons.code_sharp, 'Python'),
                        mySpec(Icons.design_services, 'UI'),
                        mySpec(Icons.web, 'UX'),

                      ],
                    ),SizedBox(height: 18,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        mySpec(Icons.code_rounded, 'C++'),
                        mySpec(Icons.apple, 'IOS'),
                        mySpec(Icons.window_sharp, 'Windows'),

                      ],
                    ),],

                )
              ],
            ),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 45),
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
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.53),
                child: Column(
                  children: [
                    Text('Chris Hemsworth',style: TextStyle(
                      color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 3,),
                    Text('Software Developer',style: TextStyle(
                      color: Colors.white,fontSize: 19
                    ),)
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}
