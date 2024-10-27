import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Recipe Calculator',
      // 5
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
        ),
      ),
      // 6
      home: const MyHomePage(
        title: 'Recipe Calculator',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Recipe.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // TODO: Update to return Recipe card
            // return Text(Recipe.samples[index].label);
            // TODO: Add GestureDetector
            //return buildRecipeCard(Recipe.samples[index]);
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }

// TODO: Add buildRecipeCard() here
  Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
// 2
      child: Column(
// 3
        children: <Widget>[
// 4
          Image(image: AssetImage(recipe.imageUrl)),
// 5
          Text(recipe.label),
        ],
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  // 1
  return Card(
    // 2
    child: Column(
      // 3
      children: <Widget>[
        // 4
        Image(image: AssetImage(recipe.imageUrl)),
        // 5
        Text(recipe.label),
      ],
    ),
  );
}
// TODO: Add buildRecipeCard() here

