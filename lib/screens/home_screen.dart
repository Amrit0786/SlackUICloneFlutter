import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:slack_clone_app_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 0.2,
                      color: Colors.black38,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 0.5,
                      )
                    ]),
                child: ClipRRect(
                  //ClipRRect because otherwise on tap of ink well ink goes out of bound.
                  borderRadius: BorderRadius.circular(5),
                  child: Material(
                    // It is used with white color so that searchBar get background color as white and we see the tap effect with inkWell
                    color: Colors.white,
                    child: InkWell(
                      /*Colors.transparent is used to basically disable splash effect.
                      To make exactly like Slack animation we can create our own CustomClassFactory
                      with varied speed of animation and size of splash.
                       */
                      splashColor: Colors.transparent,
                      highlightColor: Colors.grey,
                      onTap: () {
                        print('search bar');
                      },
                      /*Previous container was used to make search bar appear little elevated.
                      Inkwell highlight effect could not have been seen with the shadow with parent container.
                       */
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Jump to...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            NamedIconContainer(
                label: 'Threads', icon: FlutterIcons.message1_ant),
            AddItems(itemName: 'Channels'),
            AddItems(itemName: 'Direct Messages')
          ],
        ),
      ),
    );
  }
}
