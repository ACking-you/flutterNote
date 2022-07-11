import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//这是一个个人信息的card Demo，展示电话号码和邮箱
//学到对方东西：
// 1.图片和字体资源的导入
// 2.Row和Column组件的使用 关于mainAxisAlignment和crossAxisAlignment的使用和区别为重点
// 3.Center和Padding组件的快速使用
// 4.Card组件升级边框阴影
// 5.通过设置ListTile组件代替图片+文字的一行说明
// 6.所有填充类的长度统一用EdgeInsets，他有三类常用方式：（1 symmetric直接设置垂直和水平状态的 （2 all四个方向一次设置 （3fromLTRB
class MyApp extends StatelessWidget {
  MyApp({Key? key})
      :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/avatar.png"),
                ),
                Text(
                  "L_B__",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: "Pacifico",
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "CPP DEVELOPER",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Source Sans Pro",
                    letterSpacing: 2.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(color: Colors.teal.shade50,),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  color: Colors.white,
                  child: Padding(
                    padding:EdgeInsets.all(10.0),
                    child:ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text("+86 17674742150",
                        style: TextStyle(
                            color: Colors.teal
                        ),),
                    ) ,
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text("233244@qq.com",
                          style: TextStyle(
                              color: Colors.teal
                          )
                      ),
                    )
                  ),
                )
              ],
            ),
          )),
    );
  }
}
