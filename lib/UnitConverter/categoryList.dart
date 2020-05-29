import 'package:flutter/material.dart';
import 'categoryItem.dart';
import 'CategoryModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CategoryList extends StatelessWidget{
  CategoryList();
  var _categories = [
    CategoryModel(name: 'Length', color: Colors.lightBlueAccent, icon: FontAwesomeIcons.ruler, unitMap: { 'm':1.0,'cm':0.01, 'mm':0.001}),
    CategoryModel(name: 'Area', color: Colors.lightBlueAccent, icon:FontAwesomeIcons.square, unitMap: {'m²':1.0, 'cm²':0.001,'mm²':0.00001}),
    CategoryModel(name: 'Mass', color: Colors.lightBlueAccent, icon:FontAwesomeIcons.balanceScale, unitMap: {'Kg':1.0, 'grams':0.001, 'tonnes':1000.0, 'lb':0.453592}),
    CategoryModel(name: 'Digital Storage', color: Colors.lightBlueAccent, icon:FontAwesomeIcons.hdd, unitMap: {'B':1.0, 'KB':1024.0, 'b':0.125, 'MB':1048576.0}),
    CategoryModel(name: 'Energy', color: Colors.lightBlueAccent, icon:FontAwesomeIcons.fire, unitMap: {'Joules':1.0, 'Calories':4.184, 'KJ':1000.0}),
    CategoryModel(name: 'Currency', color: Colors.lightBlueAccent, icon:FontAwesomeIcons.coins, unitMap: {"USD":1.0, 'INR':70.57, 'KWD':3.29, "EUR":0.88, "PHP PESO":51.0}),
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    if(Orientation.landscape == true){
      return GridView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      );
    }else{
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final categories = <CategoryItem>[];
    for(var i=0;i< _categories.length;i++){
      categories.add(
          CategoryItem(
              index: i,
              category: _categories[i],
              onTap: (index){

              })
      );
    }
    final listView = Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );
    return listView;

  }
}