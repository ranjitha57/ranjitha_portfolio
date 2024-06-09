import 'package:url_launcher/url_launcher.dart';

import '../utils/strings.dart';

launchEmail(String email) async {
  final Uri emailLaunchUri = Uri(
    scheme: StringConst.mailTo,
    path: email,
  );

  if (await canLaunchUrl(Uri.parse(emailLaunchUri.toString()))) {
    await launchUrl(Uri.parse(emailLaunchUri.toString()));
  } else {
    throw '${StringConst.couldNotLaunch} $emailLaunchUri';
  }
}

launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw '${StringConst.couldNotLaunch} $url';
  }
}
