import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  final String category = 'Jonathan\'s Choice';
  final String title = 'Thanksgiving';
  final String description1 = 'Turkey Recipe';
  final String description2 = 'Turkey Salad Recipe';
  final String description3 = 'Turkey Club Recipe';

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
              image: AssetImage('assets/turkey1.jpg'),
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
              image: AssetImage('assets/turkey-salad.jpg'),
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
              image: AssetImage('assets/turkey_club.jpg'),
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
              "Ingredients:\nTurkey\nCelery and Red Onion\nDried Cranberries\nSalted and Roasted Almonds\nMayonnaise\nPlain Greek Yogurt\nLemon Juice\nDijon Mustard\nSea Salt and Pepper\nFresh Dill or Parsley" +
                  "\n\n1) Mix all the Ingredient in Together Toss the Salad and Enjoy!"),
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
              "Ingredients:\n1 14-16 pound turkey\n2 tablespoon butter, softened\nDouble Mustard-Brown Sugar Glaze or Hot Honey-Sesame Glaze" +
                  "\n\n1) Preheat oven to 325°F\n2) Rub turkey all over with softened butter and place turkey, breast side down, on a rack in a roasting pan\n3) Roast 2 1/4 hours."),
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
            child: Text("Ingredients:\nWhite bread toasted\nMayonnaise\nLettuce\nTomato\nMonterey Jack Cheese\nGolden Roasted Turkey" +
                "\nCrispy Bacon \n\n1) Toast the bread\n2) Spread mayonnaise on each bread slice\n3) Stack the bread, lettuce, tomato, Monterey Jack Cheese, turkey, bacon and a slice of white bread" +
                "\n4) Repeat sequence for the second layer\n5) Finish by topping off with a slice of bread, mayonnaise side down.")),
      ),
    ]);
  }
}
