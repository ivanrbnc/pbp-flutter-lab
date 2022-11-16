import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/add_budget.dart';
import 'package:counter_7/show_budget.dart';
import 'package:counter_7/budget.dart';

class MyBudgetPage extends StatefulWidget {
  const MyBudgetPage({super.key});

  @override
  State<MyBudgetPage> createState() => _MyBudgetPageState();
}

class _MyBudgetPageState extends State<MyBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        // Menambahkan drawer menu
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
                    MaterialPageRoute(
                        builder: (context) => const MyBudgetPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    children: BudgetList.list.isEmpty
                        ? [
                            Center(
                              child: Text("Belum ada data"),
                            )
                          ]
                        : BudgetList.list
                            .map(
                              (budget) => Card(
                                child: SizedBox(
                                  height: 95,
                                  child: Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 12),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          budget.judul,
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(budget.nominal.toString()),
                                          Text(budget.jenis),
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                            )
                            .toList()))));
  }
}
