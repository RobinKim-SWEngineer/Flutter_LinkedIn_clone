import 'package:flutter/material.dart';

const HANDSOME_ME = 'assets/images/handsome_me.png';

class HeaderLayer extends StatefulWidget implements PreferredSizeWidget {
  HeaderLayer({Key? key}) : super(key: key);

  @override
  _HeaderLayerState createState() => _HeaderLayerState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _HeaderLayerState extends State<HeaderLayer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15,
        top: 15,
      ),
      child: Row(
        children: [
          SizedBox(
            height: _screenSize.width * 0.10,
            child: Image.asset(HANDSOME_ME),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.grey.withOpacity(0.3),
              ),
              height: _screenSize.width * 0.10,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.chat,
            size: _screenSize.width * 0.07,
          ),
        ],
      ),
    );
  }
}
