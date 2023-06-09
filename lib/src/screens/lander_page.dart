import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:wordsleuth/src/auth/sign_in.dart';

class LanderPage extends StatefulWidget {
  const LanderPage({super.key, required this.title});

  final String title;

  @override
  State<LanderPage> createState() => _LanderPageState();
}

class _LanderPageState extends State<LanderPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> signOutCurrentUser() async {
    try {
      await Amplify.Auth.signOut();
    } on AuthException catch (e) {
      safePrint(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          IconButton(
              icon: const Icon(
                Icons.account_circle,
              ),
              onPressed: () {
                signOutCurrentUser().then((value) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SignInPage(title: widget.title))));
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About')
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 480,
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 108,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'WordSleuth 2.0',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      // ignore: prefer_const_constructors
                      Text(
                        'This is a re-make of an app that I wrote about 10 years ago for Android, but this time, it\'s a good excuse to learn Flutter and Amazon AWS.',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.deepPurple,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: Text('More Info...'),
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ), //Card
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 480,
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 108,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'WordSleuth 2.1',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      // ignore: prefer_const_constructors
                      Text(
                        'This is a re-make of an app that I wrote about 10 years ago for Android, but this time, it\'s a good excuse to learn Flutter and Amazon AWS.',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.deepPurple,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: Text('More Info...'),
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ), //Card
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 480,
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 108,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'WordSleuth 2.2',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      // ignore: prefer_const_constructors
                      Text(
                        'This is a re-make of an app that I wrote about 10 years ago for Android, but this time, it\'s a good excuse to learn Flutter and Amazon AWS.',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.deepPurple,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: Text('More Info...'),
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ), //Card
          ),
        ],
      ),
    );
  }
}
