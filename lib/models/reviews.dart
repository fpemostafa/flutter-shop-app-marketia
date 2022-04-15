class ReviewModel {
  final int stars;
  final String name;
  final String text;
  final String image;
  final String date;

  ReviewModel({
    required this.stars,
    required this.name,
    required this.text,
    required this.image,
    required this.date,
  });
}

List<ReviewModel> reviewsList = [
  ReviewModel(
    stars: 4,
    name: "James Lawson",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
    image: "assets/images/Profile Picture 3.png",
    date: "December 10, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Laura Octavian",
    text:
        "This is really amazing product, i like the design of product, I hope can buy it again!",
    image: "assets/images/Profile Picture 1.png",
    date: "December 07, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Jhonson Bridge",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
    image: "assets/images/Profile Picture 2.png",
    date: "December 06, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Griffin Rod",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small",
    image: "assets/images/Ellipse 119.png",
    date: "December 03, 2021",
  ),
];
