import 'file:///D:/my_projects/app1/lib/models/ProductPage.dart';
import 'package:app1/Widgets/Categoryitem.dart';
import 'file:///D:/my_projects/app1/lib/Products.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List bannerAdSlider = [
     "assets/116.jpg",
     "assets/112.jpg",
      "assets/113.jpg",
      "assets/114.jpg",

    ];

    List<Product> products = [
      Product(
        image: "assets/apple.jpg",
        description: "A fresh apple at your doorstep anytime",
        price: "100",
        productName: "Apple "
      ),  Product(
        image: "assets/potato11.jpg",
        description: "A fresh Potato at your doorstep anytime",
        price: "100",
        productName: "Potato"
      ),
      Product(
          image: "assets/red-tomato.jpg",
          description: "A fresh tomato at your doorstep anytime",
          price: "100",
          productName: "Tomato "
      ),
      Product(
        image: "assets/red-onion.jpg",
        description: "A fresh onion at your doorstep anytime",
        price: "100",
        productName: "Onion"
      ),

    ];

GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,


      )
    );


    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("HomeTopUp",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed: (){
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(EvaIcons.shoppingCart),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(

        child: ListView(
          children: <Widget>[


            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              accountEmail: Text("Aditi@mail.com",style: TextStyle(color: Colors.black,
              ),
              ),
              accountName: Text("Aditi", style: TextStyle(color: Colors.black,
              ),
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  image: NetworkImage("https://www.limosnjny.com/wp-content/uploads/2018/11/testimonial-person.png"),
                  width: 100,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10),
               ListTile(
                 title: Text("Home"),
                 leading: Icon(EvaIcons.homeOutline),
               ),
            SizedBox(height: 10),


            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
            ),
            SizedBox(height: 10),

            ListTile(
              title: Text("Catergories"),
              leading: Icon(EvaIcons.mapOutline),
            ),

            SizedBox(height: 10),
            ListTile(
              title: Text("Rewards"),
              leading: Icon(EvaIcons.heartOutline),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16/5,
                child: Image.asset("assets/banner.jpg",fit: BoxFit.cover,
                ),
              ),

              ),
            ),


          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Categories",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),

              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[

                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFffe291),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF91bfff),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff91c1),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF5340de),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF47e6a9),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff788e),
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(left: 10,),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff9378),
                    ),


                  ],
                ),
              ),
               SizedBox(height: 20,),

               // Banner ad slider
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                             child: Image(
                               height: 200,
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                               alignment: Alignment.topCenter,
                             ),
                            ),
                          );
                    },
                  );
                }).toList(),
              ),
              // Banner ad slider

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Products", style: TextStyle(fontSize: 18),),
              ),

              SizedBox(height: 20,),
              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1/1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget> [
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1/1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(
                              product.productName,
                            ),

                            Text(
                              "${product.price}\$",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  product: product,
                                ),
                              )
                            );
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
