import 'package:flutter/material.dart';
import 'package:newstoday/screen/homescreen.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://i.insider.com/62e8eef760b200001871e742?width=1136&format=jpeg',
                      ),
                      fit: BoxFit.fill))),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black45,
                Colors.black
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          )
        ,Positioned(child: Padding(
          padding: const EdgeInsets.only(left: 10,top: 35),
          child: FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

          },child: Icon(Icons.arrow_back,color: Colors.white54,size: 42,),backgroundColor: Colors.black12,),
        )),Positioned(top: 350,child: Container(width: MediaQuery.of(context).size.width-50,margin: EdgeInsets.all(24),
          child: Column(
            children: [ Container(
              child: Text(
                  'My Name Is Muhd Nihal cm. Iam a Flutter Developer',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoSlab',
                      fontSize: 29,
                      color: Color(0xFFF2F2F2)),
                ),
            ),Container(margin: EdgeInsets.only(top: 64),child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [ Text(
                  'flutter',
                  style: TextStyle(fontFamily: 'RobotoSlab',
                      fontSize: 20,
                      color: Color(0xFFBABABA)),
                ),Spacer(),
                  Text(
                    '2019/09/09',
                    style: TextStyle(fontFamily: 'RobotoSlab',
                        fontSize: 20,
                        color: Color(0xFFBABABA)),
                  )]),)
         ,Container(margin: EdgeInsets.only(top: 16,),child: Text('giwhqe hhkhjoawf iuohuaewff ghkbuefw iuouiuwef iugouew jgouiyhwer iugobuier ygkgsfjglugluigsdlhujgugr jghuilgr igluigerf iugluighlser gkuygluierf kyugtoliugher liyytguilgerf liutuliolerf yuuguilger uigyoluerfbuyug kyutgkuerfe  uygyggf kuygtyggrf gklildsgr ugouoiwego ',style: TextStyle(fontFamily: 'RobotoSlab',fontSize: 12,color: Color(0xFFBABABA)),),)] ),
        ))],
      ),
    );
  }
}
