import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redirect_icon/redirect_icon.dart';

class ProjectContainer extends StatefulWidget {
  final String heading;
  final String tech;
  final String description;
  final String url;

  const ProjectContainer({
    Key? key,
    required this.heading,
    required this.tech,
    required this.description,
    required this.url,
  }) : super(key: key);

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          controller: ScrollController()
            ..addListener(() {
              final scrollPosition = (context.findRenderObject() as RenderBox)
                  .localToGlobal(Offset.zero)
                  .dy;
              final screenHeight = MediaQuery.of(context).size.height;
              final isVisible = scrollPosition >= 0 && scrollPosition <= screenHeight;
              
              if (!isVisible && isExpanded) {
                setState(() {
                  isExpanded = false;
                });
              }
            }),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  width: 500,
                  color: Colors.grey[200], // Change color as needed
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.heading,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RedirectSocialIcon(
                            url: widget.url,
                            icon: FontAwesomeIcons.github,
                            radius: 15,
                            size: 19,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            isExpanded ? Icons.expand_less : Icons.expand_more,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (isExpanded)
                Container(
                  width: 500,
                  color: Colors.grey[300], // Change color as needed
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.tech,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
