import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const new({super.key, required this.isChoise,required this.color});

  final bool isChoise;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isChoise
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 36, backgroundColor: color),
          )
        :  CircleAvatar(radius: 38, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xff98D2EB),
    Color(0xffE1F2FE),
    Color(0xffB2B1CF),
    Color(0xff77625C),
    Color(0xff49392C),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(isChoise: currentIndex == index,color: colors[index],),
            ),
          );
        },
      ),
    );
  }
}
