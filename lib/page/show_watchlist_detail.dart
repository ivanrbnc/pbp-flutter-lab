import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/add_budget.dart';
import 'package:counter_7/page/show_budget.dart';
import 'package:counter_7/page/show_watchlist.dart';
import 'package:counter_7/model/watchlist.dart';

class MyWatchListDetail extends StatelessWidget {
  final WatchList myWatchList;
  const MyWatchListDetail({super.key, required this.myWatchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchList()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            myWatchList.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
          )),
          Text("Release Date: " + myWatchList.releaseDate,
              style: TextStyle(fontSize: 25)),
          Text("Rating: " + myWatchList.rating.toString() + "/5",
              style: TextStyle(fontSize: 25)),
          myWatchList.watched
              ? Text("Status : watched", style: TextStyle(fontSize: 25))
              : Text("Status : unwatched", style: TextStyle(fontSize: 25)),
          Text("Review: " + myWatchList.review, style: TextStyle(fontSize: 25)),
          Container(
            width: 125,
            child: TextButton(
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
