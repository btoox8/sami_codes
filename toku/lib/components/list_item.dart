import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';
// import 'package:toku/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      // constructor with required
      // did we use required due to we use final
      {Key? key,
      required this.item,
      required this.color,
      required this.itemType})
      : super(key: key);
  // properties
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    // return ask is it in or not image?
    // return item.image == null ? dothis: dothis // if it there
    return item.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          // itemType == enter to which folder
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(item.sound);
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                // we put our image inside container
                Container(
                    color: Color(0xffFFF6DC), child: Image.asset(item.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(item.sound); // I remove item!
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          );
  }
}

// class PhraseItem extends StatelessWidget {
//   const PhraseItem(
//       {Key? key,
//       required this.color,
//       required this.itemType,
//       required this.phrase})
//       : super(key: key);

//   final Item phrase;
//   final Color color;
//   final String itemType;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       color: color,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   phrase.jpName,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text(
//                   phrase.enName,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(
//             flex: 1,
//           ),
//           IconButton(
//             onPressed: () {
//               try {
//                 AudioCache player =
//                     AudioCache(prefix: 'assets/sounds/$itemType/');
//                 player.play(phrase.sound);
//               } catch (ex) {
//                 print(ex);
//               }
//             },
//             icon: Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 28,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
