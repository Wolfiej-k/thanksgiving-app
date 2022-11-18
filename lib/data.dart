final turkey = Menu('Turkey', [
  MenuItem('Roast Turkey', 'assets/images/roast_turkey.jpeg', [
    '1/4 pound (1 stick) unsalted butter',
    '1 lemon, zested and juiced',
    '1 teaspoon chopped fresh thyme leaves',
    '1 fresh turkey (10 to 12 pounds)',
    'Kosher salt',
    'Freshly ground black pepper',
    '1 large bunch fresh thyme',
    '1 whole lemon, halved',
    '1 Spanish onion, quartered',
    '1 head garlic, halved crosswise'
  ]),
  MenuItem('Turkey Stuffing', 'assets/images/turkey_stuffing.jpg', [
    '2 baguettes or country-style or sourdough bread loaves (about 1 lb.)',
    '1/2 c. (1 stick) unsalted butter, plus more for baking dish',
    '1 large onion, finely chopped (about 2 1/4 c.)',
    '4 stalks celery, thinly sliced',
    '2 cloves garlic, finely chopped',
    '1/2 c. chopped fresh parsley',
    '1 tbsp. fresh sage leaves, finely chopped',
    '1 tbsp. fresh thyme leaves, finely chopped',
    '1 1/2 tsp. chopped fresh rosemary',
    'Kosher salt',
    'Freshly ground black pepper',
    '4 c. low-sodium chicken or vegetable broth',
    '2 large eggs, beaten to blend'
  ]),
  MenuItem('Ground Turkey Pasta', 'assets/images/turkey_pasta.jpg', [
    '8 oz. medium dried pasta shells',
    '1 tablespoon olive oil',
    '1 medium yellow onion minced',
    '1 teaspoon salt separated',
    '5 garlic cloves peeled and minced',
    '1 lb. ground turkey',
    '3 tablespoons homemade Italian seasoning',
    '1 15-oz. can tomato sauce',
    '½ cup starchy pasta water',
   '3 tablespoons tomato paste',
    '¼ cup heavy cream',
    '½ cup grated parmesan cheese',
    '¼ cup fresh chopped parsley',
  ])
]);

final dessert = Menu('Desserts', [
  MenuItem('Pumpkin Pie', 'assets/images/pumpkin_pie.webp', [
    '15-oz can canned solid-pack pumpkin (about 2 cups)',
    '1 cup heavy cream',
    '1/2 cup whole milk',
    '2 large eggs',
    '3/4 cup packed light brown sugar',
    '1 teaspoon ground cinnamon',
    '1 teaspoon ground ginger',
    'Pinch of ground cloves',
    '1/4 teaspoon salt',
  ]),
  MenuItem('Cheesecake', 'assets/images/cheesecake.jpg', [
    '2 pounds (900g) cream cheese, at room temperature',
    '1 1/3 cups (270g) sugar',
    'Pinch of salt',
    '2 teaspoons vanilla extract',
    '4 large eggs, at room temperature',
    '2/3 cup (160ml) sour cream, at room temperature',
    '2/3 cup (160ml) heavy cream',
  ]),
  MenuItem('Sugar Cookies', 'assets/images/cookies.jpeg', [
    '1 cup granulated sugar',
    '2 1/2 cups all-purpose flour',
    '1 teaspoon pumpkin pie spice',
    '1/4 teaspoon baking powder',
    'Fine salt',
    '12 tablespoons (1 1/2 sticks) unsalted butter, cut into small pieces, at room temperature',
    '1 large egg, lightly beaten',
    '1 teaspoon pure vanilla extract',
  ])
]);

final drink = Menu('Drinks', [
  MenuItem('Apple Cider', 'assets/images/apple_cider.jpg', [
    '10 large apples quartered',
    '1 orange quartered',
    '3-4 cinnamon sticks',
    '1 tablespoon whole cloves',
    '1-2 whole nutmeg',
    '½ cup packed brown sugar',
  ]),
  MenuItem('Hot Chocolate', 'assets/images/hot_chocolate.webp', [
    '2 tablespoons unsweetened cocoa powder',
    '1 to 2 tablespoons sugar (depending on how sweet you like it)',
    'Pinch of salt',
    '1 cup milk or any combination of milk, half-and-half, or cream',
    '¼ teaspoon vanilla extract',
  ]),
  MenuItem('Water', 'assets/images/water.jpg', [
    '1 pint of water'
  ])
]);

class Menu {
  final String name;
  final List<MenuItem> items;
  
  Menu(this.name, this.items);
}

class MenuItem {
  late String label, image;
  late List<String> ingredients;

  MenuItem(this.label, this.image, this.ingredients);

  String getIngredients() {
    return ingredients.map((e) => '» $e').join('\n');
  }
}