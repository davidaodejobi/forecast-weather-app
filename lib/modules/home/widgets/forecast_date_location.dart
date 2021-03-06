import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/services/location_service.dart';

import '../../../constant/paddings.dart';
import '../../../locator.dart';

class ForecastDateLocation extends StatelessWidget {
  const ForecastDateLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocationService locationService = getIt<LocationService>();

    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${locationService.currentLocality}, \n${locationService.currentCountry}',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  height: 1.5,
                ),
          ),
          const SizedBox(height: 8.0),
          Text(
            DateFormat.MMMEd().format(DateTime.now()),
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
