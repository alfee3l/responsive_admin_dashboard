import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses__item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      price: r'$April 2022',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      price: r'$April 2022',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpanses,
      title: 'Expenses',
      price: r'$April 2022',
      date: 'April 2022',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
         SizedBox(width: 8,),
         Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
    ],);
      
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                isSelected: selectedIndex == index,
                allExpensesItemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
