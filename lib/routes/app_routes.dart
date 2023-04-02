import 'package:solution_challenge/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:solution_challenge/presentation/account_creation_screen/binding/account_creation_binding.dart';
import 'package:solution_challenge/presentation/item_availability_screen/item_availability_screen.dart';
import 'package:solution_challenge/presentation/item_availability_screen/binding/item_availability_binding.dart';
import 'package:solution_challenge/presentation/feedback_screen/feedback_screen.dart';
import 'package:solution_challenge/presentation/feedback_screen/binding/feedback_binding.dart';
import 'package:solution_challenge/presentation/advanced_search_screen/advanced_search_screen.dart';
import 'package:solution_challenge/presentation/advanced_search_screen/binding/advanced_search_binding.dart';
import 'package:solution_challenge/presentation/item_grouper_screen/item_grouper_screen.dart';
import 'package:solution_challenge/presentation/item_grouper_screen/binding/item_grouper_binding.dart';
import 'package:solution_challenge/presentation/feedback_collection_screen/feedback_collection_screen.dart';
import 'package:solution_challenge/presentation/feedback_collection_screen/binding/feedback_collection_binding.dart';
import 'package:solution_challenge/presentation/google_login_screen/google_login_screen.dart';
import 'package:solution_challenge/presentation/google_login_screen/binding/google_login_binding.dart';
import 'package:solution_challenge/presentation/map_screen/map_screen.dart';
import 'package:solution_challenge/presentation/map_screen/binding/map_binding.dart';
import 'package:solution_challenge/presentation/bhim_upi_integration_screen/bhim_upi_integration_screen.dart';
import 'package:solution_challenge/presentation/bhim_upi_integration_screen/binding/bhim_upi_integration_binding.dart';
import 'package:solution_challenge/presentation/order_summary_screen/order_summary_screen.dart';
import 'package:solution_challenge/presentation/order_summary_screen/binding/order_summary_binding.dart';
import 'package:solution_challenge/presentation/question_bank_screen/question_bank_screen.dart';
import 'package:solution_challenge/presentation/question_bank_screen/binding/question_bank_binding.dart';
import 'package:solution_challenge/presentation/qr_codes_screen/qr_codes_screen.dart';
import 'package:solution_challenge/presentation/qr_codes_screen/binding/qr_codes_binding.dart';
import 'package:solution_challenge/presentation/request_management_screen/request_management_screen.dart';
import 'package:solution_challenge/presentation/request_management_screen/binding/request_management_binding.dart';
import 'package:solution_challenge/presentation/google_pay_integration_screen/google_pay_integration_screen.dart';
import 'package:solution_challenge/presentation/google_pay_integration_screen/binding/google_pay_integration_binding.dart';
import 'package:solution_challenge/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:solution_challenge/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:solution_challenge/presentation/security_policy_screen/security_policy_screen.dart';
import 'package:solution_challenge/presentation/security_policy_screen/binding/security_policy_binding.dart';
import 'package:solution_challenge/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:solution_challenge/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:solution_challenge/presentation/store_locator_screen/store_locator_screen.dart';
import 'package:solution_challenge/presentation/store_locator_screen/binding/store_locator_binding.dart';
import 'package:solution_challenge/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:solution_challenge/presentation/signup_login_module_screen/binding/signup_login_module_binding.dart';
import 'package:solution_challenge/presentation/splash_screen/splash_screen.dart';
import 'package:solution_challenge/presentation/splash_screen/binding/splash_binding.dart';
import 'package:solution_challenge/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:solution_challenge/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:solution_challenge/presentation/two_factor_authentication_screen/two_factor_authentication_screen.dart';
import 'package:solution_challenge/presentation/two_factor_authentication_screen/binding/two_factor_authentication_binding.dart';
import 'package:solution_challenge/presentation/user_account_screen/user_account_screen.dart';
import 'package:solution_challenge/presentation/user_account_screen/binding/user_account_binding.dart';
import 'package:solution_challenge/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:solution_challenge/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String accountCreationScreen = '/account_creation_screen';

  static const String itemAvailabilityScreen = '/item_availability_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String advancedSearchScreen = '/advanced_search_screen';

  static const String itemGrouperScreen = '/item_grouper_screen';

  static const String feedbackCollectionScreen = '/feedback_collection_screen';

  static const String googleLoginScreen = '/google_login_screen';

  static const String mapScreen = '/map_screen';

  static const String bhimUpiIntegrationScreen = '/bhim_upi_integration_screen';

  static const String orderSummaryScreen = '/order_summary_screen';

  static const String questionBankScreen = '/question_bank_screen';

  static const String qrCodesScreen = '/qr_codes_screen';

  static const String requestManagementScreen = '/request_management_screen';

  static const String googlePayIntegrationScreen =
      '/google_pay_integration_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String securityPolicyScreen = '/security_policy_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String storeLocatorScreen = '/store_locator_screen';

  static const String signupLoginModuleScreen = '/signup_login_module_screen';

  static const String splashScreen = '/splash_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String twoFactorAuthenticationScreen =
      '/two_factor_authentication_screen';

  static const String userAccountScreen = '/user_account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: accountCreationScreen,
      page: () => AccountCreationScreen(),
      bindings: [
        AccountCreationBinding(),
      ],
    ),
    GetPage(
      name: itemAvailabilityScreen,
      page: () => ItemAvailabilityScreen(),
      bindings: [
        ItemAvailabilityBinding(),
      ],
    ),
    GetPage(
      name: feedbackScreen,
      page: () => FeedbackScreen(),
      bindings: [
        FeedbackBinding(),
      ],
    ),
    GetPage(
      name: advancedSearchScreen,
      page: () => AdvancedSearchScreen(),
      bindings: [
        AdvancedSearchBinding(),
      ],
    ),
    GetPage(
      name: itemGrouperScreen,
      page: () => ItemGrouperScreen(),
      bindings: [
        ItemGrouperBinding(),
      ],
    ),
    GetPage(
      name: feedbackCollectionScreen,
      page: () => FeedbackCollectionScreen(),
      bindings: [
        FeedbackCollectionBinding(),
      ],
    ),
    GetPage(
      name: googleLoginScreen,
      page: () => GoogleLoginScreen(),
      bindings: [
        GoogleLoginBinding(),
      ],
    ),
    GetPage(
      name: mapScreen,
      page: () => MapScreen(),
      bindings: [
        MapBinding(),
      ],
    ),
    GetPage(
      name: bhimUpiIntegrationScreen,
      page: () => BhimUpiIntegrationScreen(),
      bindings: [
        BhimUpiIntegrationBinding(),
      ],
    ),
    GetPage(
      name: orderSummaryScreen,
      page: () => OrderSummaryScreen(),
      bindings: [
        OrderSummaryBinding(),
      ],
    ),
    GetPage(
      name: questionBankScreen,
      page: () => QuestionBankScreen(),
      bindings: [
        QuestionBankBinding(),
      ],
    ),
    GetPage(
      name: qrCodesScreen,
      page: () => QrCodesScreen(),
      bindings: [
        QrCodesBinding(),
      ],
    ),
    GetPage(
      name: requestManagementScreen,
      page: () => RequestManagementScreen(),
      bindings: [
        RequestManagementBinding(),
      ],
    ),
    GetPage(
      name: googlePayIntegrationScreen,
      page: () => GooglePayIntegrationScreen(),
      bindings: [
        GooglePayIntegrationBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: securityPolicyScreen,
      page: () => SecurityPolicyScreen(),
      bindings: [
        SecurityPolicyBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: storeLocatorScreen,
      page: () => StoreLocatorScreen(),
      bindings: [
        StoreLocatorBinding(),
      ],
    ),
    GetPage(
      name: signupLoginModuleScreen,
      page: () => SignupLoginModuleScreen(),
      bindings: [
        SignupLoginModuleBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
      ],
    ),
    GetPage(
      name: twoFactorAuthenticationScreen,
      page: () => TwoFactorAuthenticationScreen(),
      bindings: [
        TwoFactorAuthenticationBinding(),
      ],
    ),
    GetPage(
      name: userAccountScreen,
      page: () => UserAccountScreen(),
      bindings: [
        UserAccountBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignupLoginModuleScreen(),
      bindings: [
        SignupLoginModuleBinding(),
      ],
    )
  ];
}
