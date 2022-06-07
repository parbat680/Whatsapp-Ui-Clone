import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: const Color.fromRGBO(27, 161, 102, 1),
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(data[i].avatar),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        data[i].name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data[i].time,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      data[i].message,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ));
  }
}
