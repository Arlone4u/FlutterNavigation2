import 'package:flutter/material.dart';
import 'package:flutter_navigation/palette.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Caffeine Machine',
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: ' ',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.pop(
              context,
            );
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Palette.kToDark),
              accountName: Text(
                "Coffee Lover",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "coffee.lover@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
              ),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.bug_report,
              ),
              title: const Text('Report an issue'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
              ),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
              title: Text("Latte"),
              onTap: () {},
              subtitle: Text(
                  "A milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top."),
              leading: ClipOval(
                child: Image.network(
                  'assets/images/latte.png',
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Icon(Icons.favorite)),
          ListTile(
              title: Text("Cappucino"),
              onTap: () {},
              subtitle: Text(
                  "A traditionally small (180 ml maximum) with a thick layer of foam."),
              leading: ClipOval(
                child: Image.network(
                  'assets/images/cappuccino.png',
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Icon(Icons.favorite)),
          ListTile(
              title: Text("Espresso"),
              onTap: () {},
              subtitle: Text(
                  "A concentrated form of coffee served in small, strong shots and is the base for many coffee drinks."),
              leading: ClipOval(
                child: Image.network(
                  'assets/images/espresso.png',
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Icon(Icons.favorite)),
          ListTile(
              title: Text("Macchiato"),
              onTap: () {},
              subtitle: Text(
                  "Topped with a small amount of foamed or steamed milk to allow the taste of the espresso to still shine through."),
              leading: ClipOval(
                child: Image.network(
                  'assets/images/macchiato.png',
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Icon(Icons.favorite)),
          ListTile(
              title: Text("Mocha"),
              onTap: () {},
              subtitle: Text(
                  "A drink made with a double shot of espresso, chocolate (syrup, drinking chocolate, or shavings) and steamed milk."),
              leading: ClipOval(
                child: Image.network(
                  'assets/images/mocha.png',
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
