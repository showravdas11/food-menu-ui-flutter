import 'package:flutter/material.dart';
import 'package:menu_ui_design/menuList/food_list.dart';
import 'package:menu_ui_design/models/food.dart';
import 'package:menu_ui_design/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // menuarray

    List FoodMenu = [
      Food(
          name: "Nigirizushi",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "makizushi",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "Inarizushi",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "Chirashizushi",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "Temaki",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "California roll",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "Oshizushi",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
      Food(
          name: "Hosomaki",
          price: "30",
          imagePath:
              "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
          ratting: "4.4"),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            leading: Icon(
              Icons.arrow_back,
              fill: 1.0,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ],
            title: Center(
              child: Container(
                width: 160,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-lZyjkvi5Gcx2cTu2_-H_IoXywFcrhKg8SLnliABGV8oR9pX5gzMqVsr2zWjLWvoVnqM&usqp=CAU"),
              ),
            ),
          ),
          body: Column(
            children: [
              // quotes

              Padding(padding: const EdgeInsets.only(top: 20)),
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Life's too short to say no to sushi!",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  foregroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  padding: EdgeInsets.all(20)),
                              // style: ButtonStyle(backgroundColor: Colors.amber),
                              onPressed: () {
                                print("clicked");
                              },
                              child: Text(
                                "Welcome to Our Menu",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )),
                        )
                      ],
                    ),
                    Image.network(
                      "https://static.vecteezy.com/system/resources/previews/016/774/832/non_2x/japanese-food-sushi-illustration-free-png.png",
                      width: 120,
                      height: 120,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //menu

              const Text(
                "Our Menu is Here",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(238, 0, 0, 0)),
              ),

              SizedBox(
                height: 30,
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: FoodMenu.length,
                  shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => FoodList(food: FoodMenu[index])),
              ),
            ],
          )),
    );
  }
}
