import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myPro(lan,title,desc,star){
    return Container(
      child: Card(
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width*0.85,
          color: Color(0xff252525),
          child: Container(
            margin: EdgeInsets.only(left: 20,right: 10,top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lan,style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 10,),
                Text(title,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(desc,
                  style: TextStyle(color: Colors.white,fontSize: 17),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.white70,size: 19,),
                    SizedBox(width: 5,),
                    Text(star,style: TextStyle(color: Colors.white70,fontSize: 18),),
                    Expanded(child: Container()),
                    IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.github) ,color: Colors.white,)
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('FLUTTER', 'Click 2 Code', 'An Online Compiler', '9.8'),
              myPro('FLUTTER', 'Click 2 Code', 'Portfolio Application', '9.4'),
              myPro('FLUTTER', 'Click 2 Code', 'News Application', '9.6'),
              myPro('FLUTTER', 'Click 2 Code', 'Weather Application', '9.2'),
              myPro('FLUTTER', 'Click 2 Code', 'Food Recipe Application', '9.5'),

            ],
          ),
        ),
      ),

    );
  }
}
