import 'package:flutter/material.dart';
import 'package:recipe/recipe.dart';

class Home extends StatefulWidget {
  Home(this.title);
  //atributos de la clase
  String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, index){
          return cardRecipeWidget(Recipe.samples[index], context);
        },
      ),
    );
  }
}

Widget cardRecipeWidget(Recipe recipe, BuildContext context) {
  return GestureDetector(
    child: Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          Image.asset(recipe.imageURL),
          SizedBox(
            height: 10.0,
          ),
          Text(recipe.label,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Palatino'
          ),)
        ],
        ),
      ),
    ),
    onTap: (){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context){
          return RecipeDetail(recipe, recipes);
        }) 
        );
    },
  );
}

