import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  final String category = 'Jonathan\'s Choice';
  final String title = 'Thanksgiving';
  final String description1 = 'Apple Cider Recipe';
  final String description2 = 'Lemonade Recipe';
  final String description3 = 'Sweet Tea Recipe';

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
        top: 100,
        left: 50,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/apple_cider.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Text(
                category,
              ),
              Positioned(
                top: 20,
                child: Text(
                  title,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  description1,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 100,
        left: 800,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/lemonade.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Text(
                category,
              ),
              Positioned(
                top: 20,
                child: Text(
                  title,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  description2,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 100,
        right: 50,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/sweet_tea.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Text(
                category,
              ),
              Positioned(
                top: 20,
                child: Text(
                  title,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  description3,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 600,
        left: 800,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          child: Text(
              "Ingredients: \n1 cup sugar (can reduce to 3/4 cup) \n1 cup water (for the simple syrup)\n1 cup freshly squeezed lemon juice \n2 to 3 cups cold water, to dilute" +
                  "\n \n1) Boil the sugar in the water to create simple syrup \n2) Pour the Syrup into 3 Cups of Cold Water \n3) Mix with 1 Cup of Freshly Squeezed Lemon Juice"),
        ),
      ),
      Positioned(
        top: 600,
        left: 50,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          child: Text(
              "Ingredients:\nFresh apples\nOranges\nMaple Syrup or Brown Sugar\nWarming Spices:Cinnamon sticks and fresh ginger\nWater" +
                  "\n\n1) Add the apples, oranges, and spices to a large stockpot. Then cover with water, leaving about an inch or two of space at the top of the stockpot\n2) Heat the cider over high heat until and simmer for about 2 hours, or until the apples are completely soft\n3) Mash the apples and oranges\n4) Then, using a fine-mesh strainer, strain out all of the solids and discard them. \n5) Then stir in your desired amount of sweetener, to taste."),
        ),
      ),
      Positioned(
        top: 600,
        right: 50,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          child: Text(
              "Ingredients:\n12 individual tea bags\n1 cup granulated sugar\nIce\nFresh mint leaves or lemon slices" +
                  "\n\n1) Steep the tea for 5 minutes\n2) Add Sugar to Water\n3) Add Water, Lemons and Oranges and Chill"),
        ),
      ),
    ]);
  }
}
