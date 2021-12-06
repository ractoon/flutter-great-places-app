import 'package:flutter_dotenv/flutter_dotenv.dart';

class LocationHelper {
  static String generateLocationPreviewImage({
    double latitude,
    double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=${dotenv.env['GOOGLE_MAPS_API_KEY']}';
  }
}
