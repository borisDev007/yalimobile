part of 'customer_imports.dart';

@RoutePage()
class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  List<TabItem> items = [
    const TabItem(
      icon: FeatherIcons.home,
      // title: 'Home',
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      //title: 'Shop',
    ),
    const TabItem(
      icon: FeatherIcons.plus,
      //title: 'Wishlist',
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      //title: 'Cart',
    ),
    const TabItem(
      icon: FeatherIcons.user,
      //title: 'profile',
    ),
  ];

  int visit = 0;

  List<Widget> pages = [
    const Home(),
    const Categories(),
    const AddPosts(),
    const Tags(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: MyColors.whiteColor,
        color: MyColors.primaryColor.withOpacity(0.3),
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
