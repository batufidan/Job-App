import 'package:flutter/material.dart';
import 'package:job_app/util/recent_job_card.dart';

import 'util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['Uber', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Product Dev', 'lib/icons/google.png', 80],
    ['Uber', 'Software Eng.', 'lib/icons/apple.png', 95],
  ];

  final List recentJobs = [
    ['Nike', 'Web Designer', 'lib/icons/nike.png', 45],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 95],
    ['Google', 'Product Dev.', 'lib/icons/google.png', 44],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
          ),
          //app bar
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'lib/icons/menu_from_left.png',
                color: Colors.grey[800],
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //discover a new path
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job..',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'lib/icons/preferences.jpg',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),

          // for you -> job cards

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),

          SizedBox(
            height: 30,
          ),

          // recently add -> job titles

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Recentyle Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: recentJobs[index][0],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                    hourlyRate: recentJobs[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
