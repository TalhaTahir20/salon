import 'package:flutter/material.dart';
import 'package:salon_testing/models/services_model.dart';

class Services extends StatefulWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _checkMark = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: ListView.builder(
        itemCount: servicestiles.length,
        itemBuilder: (context, index) {
          ServicesTile servicesTile = servicestiles[index];
          return Container(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage(
                  servicesTile.imageUrl,
                ),
              ),
              title: Text(servicesTile.name),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _checkMark = !_checkMark;
                      });
                    },
                    icon: _checkMark
                        ? const Icon(
                            Icons.check_box_rounded,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.check_box_rounded,
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Person? '),
                      const Icon(
                        Icons.add_box_rounded,
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Text(servicesTile.price),
            ),
          );
        },
      ),
    );
  }
}
