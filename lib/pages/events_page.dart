import 'package:flutter/material.dart';
import 'package:portfolio/repositories/event_repository.dart';
import '../delegates/search_delegate.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final table = EventRepository.table;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Events'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        width: 210,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.grey.shade600),
              child: const Text('Header'),
            ),
            const ListTile(
              title: Text('Past Shows'),
            ),
            const ListTile(
              title: Text('Settings'),
            ),
            ListTile(
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "home");
                })
          ],
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 175.0,
        ),
        itemCount: table.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.grey.shade600,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    table.elementAt(index).image,
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        table.elementAt(index).name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        table.elementAt(index).data,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  void logOut(BuildContext context){
    Navigator.pop(context);
  }
}
