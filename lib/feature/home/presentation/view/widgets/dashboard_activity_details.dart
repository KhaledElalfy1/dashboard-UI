import 'package:dashboard/core/model/activity_model.dart';
import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_activity_details_card.dart';
import 'package:flutter/material.dart';

class ActivityDetailsSection extends StatelessWidget {
  const ActivityDetailsSection({super.key});
  final List<ActivityModel> activity = const [
    ActivityModel(
        icon: 'assets/icons/burn.png', value: '305', title: 'Calories burned'),
    ActivityModel(
        icon: 'assets/icons/steps.png', value: '10,983', title: 'Steps'),
    ActivityModel(
        icon: 'assets/icons/distance.png', value: '7 KM', title: 'Distance'),
    ActivityModel(
        icon: 'assets/icons/sleep.png', value: '7h48m', title: 'Sleep'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: activity.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: activity.length,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => ActivityDetailsCard(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              activity[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activity[index].value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              activity[index].title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
