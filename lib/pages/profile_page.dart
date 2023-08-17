import 'package:flutter/material.dart';
import 'package:portfolio/repositories/event_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final table = EventRepository.table;

    return Scaffold(
      appBar: AppBar(
        title: const Directionality(
          textDirection: TextDirection.ltr,
          child: Text('Profile'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.grey.shade600,
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Image(
                      image: AssetImage('images/pfp.png'),
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Luccas Ferreira Leme',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '23 years old',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('Future Events', style: TextStyle(fontWeight: FontWeight.bold
              ),),

            ),
          ),
          Expanded(
            flex: 8,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return ListTile(
                    //leading: Image.asset(table[index].image),
                    title: Text(table[index].name),
                    trailing: Text(
                      table[index].data,
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
                padding: const EdgeInsets.all(16),
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return const Divider();
                },
                itemCount: 3),
          )
        ],
      ),
    );
  }
}
