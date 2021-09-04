import 'package:flutter/material.dart';
import 'package:taply/screens/short_flip_screen.dart';

class CategoryMenuScreen extends StatefulWidget {
  CategoryMenuScreen({Key? key}) : super(key: key);

  @override
  _CategoryMenuScreenState createState() => _CategoryMenuScreenState();
}

class _CategoryMenuScreenState extends State<CategoryMenuScreen> {
  Widget _buildIconButton(IconData icon_name, String category_name) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.blue[100],
              ),
              shape: MaterialStateProperty.all<CircleBorder>(
                CircleBorder(
                  side: BorderSide.none,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                icon_name,
                color: Colors.blueAccent,
                size: 40.0,
              ),
            ),
            onPressed: () {},
          ),
        ),
        Text(
          category_name,
          style: TextStyle(
            color: Colors.blueAccent,
            fontFamily: 'Gayathri',
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taply'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShortFlipContent(),
              ),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            _buildIconButton(
              Icons.business_center_outlined,
              "Buisiness",
            ),
            _buildIconButton(
              Icons.trending_up_outlined,
              "Trending",
            ),
            _buildIconButton(
              Icons.travel_explore_sharp,
              "World",
            ),
            _buildIconButton(
              Icons.connect_without_contact_outlined,
              "Politics",
            ),
            _buildIconButton(
              Icons.sports_baseball_outlined,
              "Sports",
            ),
            _buildIconButton(
              Icons.library_books_outlined,
              "Literature",
            ),
            _buildIconButton(
              Icons.memory_outlined,
              "Technology",
            ),
            _buildIconButton(
              Icons.shield_outlined,
              "Law",
            ),
            _buildIconButton(
              Icons.person_outline,
              "Personality",
            ),
            _buildIconButton(
              Icons.history,
              "History",
            ),
            _buildIconButton(
              Icons.calendar_today,
              "Today's Stories",
            ),
            _buildIconButton(
              Icons.movie_filter_rounded,
              "Movies",
            ),
          ],
        ),
      ),
    );
  }
}
