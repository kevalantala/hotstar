import 'package:flutter/material.dart';
import 'package:hotstar/data.dart';
import 'package:hotstar/photofirstpage.dart';

void main() {
  runApp(MaterialApp(
    home: homescreen(),
    theme: ThemeData(
        appBarTheme: AppBarTheme(
      color: const Color(0xFF000000),
    )),
  ));
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        width: 240,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ListTile(
              style: ListTileStyle.drawer,
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text(
                "share",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              title: Text(
                "MoreApp",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.more_outlined,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              title: Text(
                "About us",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Disney+Hoster",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 350,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  child: Text("${data.name[index]}",style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,

                    // image: DecorationImage(
                    //   image: AssetImage("photo1/${data.photo1[index]}"),
                    //   fit: BoxFit.fill,
                    //
                    // )
                  ),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.name.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Latest & Trending",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return photofirstpage();
                  },
                ));
              },
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 130,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("photo1/${data.photo1[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo1.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Best in Sports",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return photofirstpage();
                  },
                ));
              },
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("photo2/${data.photo2[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo2.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Best of Foreign Shows Dubbed",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("photo3/${data.photo3[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo3.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Popular Shows",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage("photo4/${data.photo4[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo4.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Movies Recommended For You",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage("photo5/${data.photo5[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo5.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Star Wars in Timeline Order",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage("photo6/${data.photo6[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo6.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "Popular Movies",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  // child: Image.asset("photo7/${data.photo7[index]}",
                  //     fit: BoxFit.contain),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage("photo7/${data.photo7[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo7.length,
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(
                "New on Disney+ Hotstar",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage("photo8/${data.photo8[index]}"),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(12),
                  height: double.infinity,
                );
              },
              itemCount: data.photo8.length,
            ),
          ),
        ],
      ),
    );
  }
}
