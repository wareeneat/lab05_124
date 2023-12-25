import 'package:flutter/material.dart';
import 'package:lap05_124/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> food = [];

  String groupFood ="ท่านยังไม่ได้ทำการเลือกรายการอาหาร";

  @override
  void initState() {
    super.initState();
    food=Food.getFood();
    for (var menu in food) {
      print(menu.thName);
      print(menu.enName);
      print(menu.price);
      print(menu.value);
      
      
      
    }

  }


  List<Widget> createFoodRadioList() {
    List<Widget> myWidget =[];
     
     for (var menu in food) {
       myWidget.add(RadioListTile(
        title: Text(menu.thName),
        subtitle: Text(menu.enName),
        secondary: Text(menu.price.toStringAsFixed(2)),
        value: menu.value,
        groupValue: groupFood,
         onChanged: (value) {
         setState(() {
           groupFood = value!;

         });
       },));
     }

     return myWidget;
  }


  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio_124"),
      ),
      body:  Column(
        children: [
          const Text("ร้านTAWAI"),
          Column(
            children: createFoodRadioList(),
          ),
          Text(groupFood),
          ],
        ),
    );
  }


  
}