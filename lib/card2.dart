import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  final String category = 'Jonathan\'s Choice';
  final String title = 'Thanksgiving';
  final String description1 = 'Pumpkin Pie Recipe';
  final String description2 = 'Apple Pie Recipe';
  final String description3 = 'Pecan Pie Recipe';

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
              image: AssetImage('assets/pumpkin_pie.jpg'),
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
              image: AssetImage('assets/apple_pie.jpg'),
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
              image: AssetImage('assets/pecan_pie.jpg'),
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
              "Ingredients:\n1 box (14.1 oz) refrigerated Pie Crust softened as directed on box\n6 cups thinly sliced, peeled apples (6 medium)\n3/4 cup sugar\n2 tablespoons all-purpose flour\n3/4 teaspoon ground cinnamon\n1/4 teaspoon salt 1/8 teaspoon ground nutmeg\n1 tablespoon lemon juice" +
                  "\n\n1) Heat oven to 425°F. Place pie crust in ungreased pan. \n2) Mix filling ingredients and put on the crust and cover with second crust. Cut slits or shapes in several places in top crust.\n3) Bake 40 to 45 minutes\n4) Cool on cooling rack at least 2 hours before serving"),
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
              "Ingredients:\n1 (15 ounce) can pumpkin puree\n1 can  Sweetened Condensed Milk\n2 large eggs\n1 teaspoon ground cinnamon\n½ teaspoon ground ginger\n½ teaspoon ground nutmeg\n½ teaspoon salt\n1 unbaked pie crust" +
                  "\n\n1) Preheat the oven to 425 degrees F\n2) Whisk pumpkin puree, condensed milk, eggs, cinnamon, ginger, nutmeg, and salt together until smooth. Pour into crust\n3) Bake in the preheated oven for 15 minutes\n4) Reduce oven temperature to 350 degrees F (175 degrees C) and continue baking until a knife inserted 1 inch from the crust comes out clean, 35 to 40 minutes"),
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
              "Ingredients:\n1 unbaked 9-inch pie crust\n2 cups (210g) pecans, coarsely chopped \n3 large eggs, slightly beaten\n1 cup light corn syrup\n1/2 cup brown sugar\n1 tablespoon molasses (unsulphured)\n4 tablespoons unsalted butter, melted\n1/2 teaspoon salt\n2 teaspoons vanilla extract" +
                  "\n\n1) Preheat the oven and position a rack in the center\n2) In a medium bowl vigorously mix together the eggs, brown sugar, corn syrup, molasses, melted butter, vanilla, and salt, until smooth\n3) Spread the chopped pecans over the bottom of a frozen pie shell. Pour the filling over the pecans.\n4) Bake at 350°F for 105-115 minutes "),
        ),
      ),
    ]);
  }
}
