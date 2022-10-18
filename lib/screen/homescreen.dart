import 'package:flutter/material.dart';
import 'package:newstoday/screen/Detailednews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF464646),
      appBar: AppBar(automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xFF000000),
          title: Text(
            "HEADLINES",
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 29,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.bold),
          )),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedScreen(),));
            },
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 400,
                          child: Image.network(
                            'https://i.insider.com/62e8eef760b200001871e742?width=1136&format=jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),SizedBox(width: 400,height: 200,child: DecoratedBox(decoration:BoxDecoration(
                gradient: LinearGradient(
                colors: [Colors.transparent,
                Colors.black45,
                    Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),),),
                        Positioned(
                            bottom: 0,
                            child: Container(
                                width: 400,

                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 12),
                                          width: 300,
                                          child: Text(
                                            'My Name Is Muhammed Nihal cm.Iam a Flutter Developer',
                                            style: TextStyle(
                                                fontFamily: 'RobotoSlab',
                                                fontSize: 20,
                                                color: Color(0xFFF2F2F2)),
                                          ),
                                        )),
                                    Align(alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          bottom: 12,
                                          top: 19,
                                          left: 12,
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [ Text(
                                            'flutter',
                                            style: TextStyle(fontFamily: 'RobotoSlab',fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Color(0xFFBABABA)),
                                          ),
                                            Padding(padding: EdgeInsets.only(left: 10),
                                              child: Text(
                                                '2019/09/09',
                                                style: TextStyle(fontFamily: 'RobotoSlab',
                                                    fontSize: 12,
                                                    color: Color(0xFFBABABA)),
                                              ),
                                            )]),
                                      ),
                                    )
                                  ],
                                )))
                      ],
                    )),
              ),
            );
          }),
    );
  }
}
