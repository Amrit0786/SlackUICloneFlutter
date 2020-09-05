import 'package:flutter/material.dart';

class NamedIconContainer extends StatelessWidget {
  final String label;
  final IconData icon;

  const NamedIconContainer({Key key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        highlightColor: Colors.grey,
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        onTap: () => print('Threads'),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
