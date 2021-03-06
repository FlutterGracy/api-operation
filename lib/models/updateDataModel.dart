import 'dart:convert';
/// success : true
/// errors : null
/// messages : null
/// data : {"user":{"id":3829,"company_id":1901,"role_id":3,"company_role_id":null,"country_id":null,"user_title_types_id":null,"currency_id":null,"contact_number_types_id":null,"marital_status_id":null,"gender_id":null,"current_membership_grade_id":1,"next_membership_grade_id":2,"slug":"test","first_name":"Test","last_name":"Test","email":"test@test.com","email_visibility":0,"date_of_birth":null,"avatar":null,"banner":null,"professional_title":null,"area":null,"contact_number":null,"contact_number_visibility":false,"contactable_whatsapp":0,"contactable_sms":0,"website":null,"website_visibility":false,"skype":null,"skype_visibility":false,"facebook":null,"facebook_visibility":false,"twitter":null,"twitter_visibility":false,"google":null,"google_visibility":false,"xing":null,"xing_visibility":false,"linkedin":null,"linkedin_visibility":false,"proxycurl_whodis":null,"allow_recruiter_access":false,"address_1":null,"address_2":null,"address_postal_code":null,"address_area":null,"work_permits":null,"relocate":false,"next_job":null,"salary_expectation":null,"profile_summary":null,"active":null,"profile_video_title":null,"profile_video_description":null,"profile_video_url":null,"membership_grade_leader_points":3500,"membership_grade_needed_leader_points":46500,"membership_grade_percent_accomplished":7,"membership_grade_eligibility":true,"matrix_uid":null,"matrix_room_sync":"2021-07-20T20:17:42+02:00","allow_api_login":true,"company":{"id":1901,"organization_id":null,"slug":"69booking","name":"69booking","logo":"/uploads/images/companies/69booking.png","tmr":false,"address_line_1":null,"address_line_2":null,"address_line_3":null,"city":null,"country_id":null,"created":"2018-06-29T09:47:50+02:00","modified":"2020-05-27T10:02:50+02:00","description":"","banner_image":"","computed_logo":"https://res.cloudinary.com/hospitalityleaders/image/upload/w_500,f_auto,q_auto/v1607348953/uploads/images/companies/69booking.png","computed_banner_image":null,"combined_line_address":"","combined_city_country":""},"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4MjksImV4cCI6MTk2NzcyMjMyNX0.Nx62HzFr5GGZ-QbDYstApelOdKzOn5nWxuBS3K653Yc","decoded":{"sub":3829,"exp":1967722325},"embed_src":"","full_name":"Test Test","expertise_string":"","active_status":"inactive","avatar_cdn":null,"holedo_url":"http://holedo.com/test"}}

UpdateDataModel updateDataModelFromJson(String str) => UpdateDataModel.fromJson(json.decode(str));
String updateDataModelToJson(UpdateDataModel data) => json.encode(data.toJson());
class UpdateDataModel {
  UpdateDataModel({
    bool? success,
    dynamic errors,
    dynamic messages,
    Data? data,}){
    _success = success;
    _errors = errors;
    _messages = messages;
    _data = data;
  }

  UpdateDataModel.fromJson(dynamic json) {
    _success = json['success'];
    _errors = json['errors'];
    _messages = json['messages'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  dynamic _errors;
  dynamic _messages;
  Data? _data;
  UpdateDataModel copyWith({  bool? success,
    dynamic errors,
    dynamic messages,
    Data? data,
  }) => UpdateDataModel(  success: success ?? _success,
    errors: errors ?? _errors,
    messages: messages ?? _messages,
    data: data ?? _data,
  );
  bool? get success => _success;
  dynamic get errors => _errors;
  dynamic get messages => _messages;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['errors'] = _errors;
    map['messages'] = _messages;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// user : {"id":3829,"company_id":1901,"role_id":3,"company_role_id":null,"country_id":null,"user_title_types_id":null,"currency_id":null,"contact_number_types_id":null,"marital_status_id":null,"gender_id":null,"current_membership_grade_id":1,"next_membership_grade_id":2,"slug":"test","first_name":"Test","last_name":"Test","email":"test@test.com","email_visibility":0,"date_of_birth":null,"avatar":null,"banner":null,"professional_title":null,"area":null,"contact_number":null,"contact_number_visibility":false,"contactable_whatsapp":0,"contactable_sms":0,"website":null,"website_visibility":false,"skype":null,"skype_visibility":false,"facebook":null,"facebook_visibility":false,"twitter":null,"twitter_visibility":false,"google":null,"google_visibility":false,"xing":null,"xing_visibility":false,"linkedin":null,"linkedin_visibility":false,"proxycurl_whodis":null,"allow_recruiter_access":false,"address_1":null,"address_2":null,"address_postal_code":null,"address_area":null,"work_permits":null,"relocate":false,"next_job":null,"salary_expectation":null,"profile_summary":null,"active":null,"profile_video_title":null,"profile_video_description":null,"profile_video_url":null,"membership_grade_leader_points":3500,"membership_grade_needed_leader_points":46500,"membership_grade_percent_accomplished":7,"membership_grade_eligibility":true,"matrix_uid":null,"matrix_room_sync":"2021-07-20T20:17:42+02:00","allow_api_login":true,"company":{"id":1901,"organization_id":null,"slug":"69booking","name":"69booking","logo":"/uploads/images/companies/69booking.png","tmr":false,"address_line_1":null,"address_line_2":null,"address_line_3":null,"city":null,"country_id":null,"created":"2018-06-29T09:47:50+02:00","modified":"2020-05-27T10:02:50+02:00","description":"","banner_image":"","computed_logo":"https://res.cloudinary.com/hospitalityleaders/image/upload/w_500,f_auto,q_auto/v1607348953/uploads/images/companies/69booking.png","computed_banner_image":null,"combined_line_address":"","combined_city_country":""},"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4MjksImV4cCI6MTk2NzcyMjMyNX0.Nx62HzFr5GGZ-QbDYstApelOdKzOn5nWxuBS3K653Yc","decoded":{"sub":3829,"exp":1967722325},"embed_src":"","full_name":"Test Test","expertise_string":"","active_status":"inactive","avatar_cdn":null,"holedo_url":"http://holedo.com/test"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
    User? user,}){
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? _user;
  Data copyWith({  User? user,
  }) => Data(  user: user ?? _user,
  );
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 3829
/// company_id : 1901
/// role_id : 3
/// company_role_id : null
/// country_id : null
/// user_title_types_id : null
/// currency_id : null
/// contact_number_types_id : null
/// marital_status_id : null
/// gender_id : null
/// current_membership_grade_id : 1
/// next_membership_grade_id : 2
/// slug : "test"
/// first_name : "Test"
/// last_name : "Test"
/// email : "test@test.com"
/// email_visibility : 0
/// date_of_birth : null
/// avatar : null
/// banner : null
/// professional_title : null
/// area : null
/// contact_number : null
/// contact_number_visibility : false
/// contactable_whatsapp : 0
/// contactable_sms : 0
/// website : null
/// website_visibility : false
/// skype : null
/// skype_visibility : false
/// facebook : null
/// facebook_visibility : false
/// twitter : null
/// twitter_visibility : false
/// google : null
/// google_visibility : false
/// xing : null
/// xing_visibility : false
/// linkedin : null
/// linkedin_visibility : false
/// proxycurl_whodis : null
/// allow_recruiter_access : false
/// address_1 : null
/// address_2 : null
/// address_postal_code : null
/// address_area : null
/// work_permits : null
/// relocate : false
/// next_job : null
/// salary_expectation : null
/// profile_summary : null
/// active : null
/// profile_video_title : null
/// profile_video_description : null
/// profile_video_url : null
/// membership_grade_leader_points : 3500
/// membership_grade_needed_leader_points : 46500
/// membership_grade_percent_accomplished : 7
/// membership_grade_eligibility : true
/// matrix_uid : null
/// matrix_room_sync : "2021-07-20T20:17:42+02:00"
/// allow_api_login : true
/// company : {"id":1901,"organization_id":null,"slug":"69booking","name":"69booking","logo":"/uploads/images/companies/69booking.png","tmr":false,"address_line_1":null,"address_line_2":null,"address_line_3":null,"city":null,"country_id":null,"created":"2018-06-29T09:47:50+02:00","modified":"2020-05-27T10:02:50+02:00","description":"","banner_image":"","computed_logo":"https://res.cloudinary.com/hospitalityleaders/image/upload/w_500,f_auto,q_auto/v1607348953/uploads/images/companies/69booking.png","computed_banner_image":null,"combined_line_address":"","combined_city_country":""}
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4MjksImV4cCI6MTk2NzcyMjMyNX0.Nx62HzFr5GGZ-QbDYstApelOdKzOn5nWxuBS3K653Yc"
/// decoded : {"sub":3829,"exp":1967722325}
/// embed_src : ""
/// full_name : "Test Test"
/// expertise_string : ""
/// active_status : "inactive"
/// avatar_cdn : null
/// holedo_url : "http://holedo.com/test"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
    int? id,
    int? companyId,
    int? roleId,
    dynamic companyRoleId,
    dynamic countryId,
    dynamic userTitleTypesId,
    dynamic currencyId,
    dynamic contactNumberTypesId,
    dynamic maritalStatusId,
    dynamic genderId,
    int? currentMembershipGradeId,
    int? nextMembershipGradeId,
    String? slug,
    String? firstName,
    String? lastName,
    String? email,
    int? emailVisibility,
    dynamic dateOfBirth,
    dynamic avatar,
    dynamic banner,
    dynamic professionalTitle,
    dynamic area,
    dynamic contactNumber,
    bool? contactNumberVisibility,
    int? contactableWhatsapp,
    int? contactableSms,
    dynamic website,
    bool? websiteVisibility,
    dynamic skype,
    bool? skypeVisibility,
    dynamic facebook,
    bool? facebookVisibility,
    dynamic twitter,
    bool? twitterVisibility,
    dynamic google,
    bool? googleVisibility,
    dynamic xing,
    bool? xingVisibility,
    dynamic linkedin,
    bool? linkedinVisibility,
    dynamic proxycurlWhodis,
    bool? allowRecruiterAccess,
    dynamic address1,
    dynamic address2,
    dynamic addressPostalCode,
    dynamic addressArea,
    dynamic workPermits,
    bool? relocate,
    dynamic nextJob,
    dynamic salaryExpectation,
    dynamic profileSummary,
    dynamic active,
    dynamic profileVideoTitle,
    dynamic profileVideoDescription,
    dynamic profileVideoUrl,
    int? membershipGradeLeaderPoints,
    int? membershipGradeNeededLeaderPoints,
    int? membershipGradePercentAccomplished,
    bool? membershipGradeEligibility,
    dynamic matrixUid,
    String? matrixRoomSync,
    bool? allowApiLogin,
    Company? company,
    String? token,
    Decoded? decoded,
    String? embedSrc,
    String? fullName,
    String? expertiseString,
    String? activeStatus,
    dynamic avatarCdn,
    String? holedoUrl,}){
    _id = id;
    _companyId = companyId;
    _roleId = roleId;
    _companyRoleId = companyRoleId;
    _countryId = countryId;
    _userTitleTypesId = userTitleTypesId;
    _currencyId = currencyId;
    _contactNumberTypesId = contactNumberTypesId;
    _maritalStatusId = maritalStatusId;
    _genderId = genderId;
    _currentMembershipGradeId = currentMembershipGradeId;
    _nextMembershipGradeId = nextMembershipGradeId;
    _slug = slug;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _emailVisibility = emailVisibility;
    _dateOfBirth = dateOfBirth;
    _avatar = avatar;
    _banner = banner;
    _professionalTitle = professionalTitle;
    _area = area;
    _contactNumber = contactNumber;
    _contactNumberVisibility = contactNumberVisibility;
    _contactableWhatsapp = contactableWhatsapp;
    _contactableSms = contactableSms;
    _website = website;
    _websiteVisibility = websiteVisibility;
    _skype = skype;
    _skypeVisibility = skypeVisibility;
    _facebook = facebook;
    _facebookVisibility = facebookVisibility;
    _twitter = twitter;
    _twitterVisibility = twitterVisibility;
    _google = google;
    _googleVisibility = googleVisibility;
    _xing = xing;
    _xingVisibility = xingVisibility;
    _linkedin = linkedin;
    _linkedinVisibility = linkedinVisibility;
    _proxycurlWhodis = proxycurlWhodis;
    _allowRecruiterAccess = allowRecruiterAccess;
    _address1 = address1;
    _address2 = address2;
    _addressPostalCode = addressPostalCode;
    _addressArea = addressArea;
    _workPermits = workPermits;
    _relocate = relocate;
    _nextJob = nextJob;
    _salaryExpectation = salaryExpectation;
    _profileSummary = profileSummary;
    _active = active;
    _profileVideoTitle = profileVideoTitle;
    _profileVideoDescription = profileVideoDescription;
    _profileVideoUrl = profileVideoUrl;
    _membershipGradeLeaderPoints = membershipGradeLeaderPoints;
    _membershipGradeNeededLeaderPoints = membershipGradeNeededLeaderPoints;
    _membershipGradePercentAccomplished = membershipGradePercentAccomplished;
    _membershipGradeEligibility = membershipGradeEligibility;
    _matrixUid = matrixUid;
    _matrixRoomSync = matrixRoomSync;
    _allowApiLogin = allowApiLogin;
    _company = company;
    _token = token;
    _decoded = decoded;
    _embedSrc = embedSrc;
    _fullName = fullName;
    _expertiseString = expertiseString;
    _activeStatus = activeStatus;
    _avatarCdn = avatarCdn;
    _holedoUrl = holedoUrl;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _companyId = json['company_id'];
    _roleId = json['role_id'];
    _companyRoleId = json['company_role_id'];
    _countryId = json['country_id'];
    _userTitleTypesId = json['user_title_types_id'];
    _currencyId = json['currency_id'];
    _contactNumberTypesId = json['contact_number_types_id'];
    _maritalStatusId = json['marital_status_id'];
    _genderId = json['gender_id'];
    _currentMembershipGradeId = json['current_membership_grade_id'];
    _nextMembershipGradeId = json['next_membership_grade_id'];
    _slug = json['slug'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _emailVisibility = json['email_visibility'];
    _dateOfBirth = json['date_of_birth'];
    _avatar = json['avatar'];
    _banner = json['banner'];
    _professionalTitle = json['professional_title'];
    _area = json['area'];
    _contactNumber = json['contact_number'];
    _contactNumberVisibility = json['contact_number_visibility'];
    _contactableWhatsapp = json['contactable_whatsapp'];
    _contactableSms = json['contactable_sms'];
    _website = json['website'];
    _websiteVisibility = json['website_visibility'];
    _skype = json['skype'];
    _skypeVisibility = json['skype_visibility'];
    _facebook = json['facebook'];
    _facebookVisibility = json['facebook_visibility'];
    _twitter = json['twitter'];
    _twitterVisibility = json['twitter_visibility'];
    _google = json['google'];
    _googleVisibility = json['google_visibility'];
    _xing = json['xing'];
    _xingVisibility = json['xing_visibility'];
    _linkedin = json['linkedin'];
    _linkedinVisibility = json['linkedin_visibility'];
    _proxycurlWhodis = json['proxycurl_whodis'];
    _allowRecruiterAccess = json['allow_recruiter_access'];
    _address1 = json['address_1'];
    _address2 = json['address_2'];
    _addressPostalCode = json['address_postal_code'];
    _addressArea = json['address_area'];
    _workPermits = json['work_permits'];
    _relocate = json['relocate'];
    _nextJob = json['next_job'];
    _salaryExpectation = json['salary_expectation'];
    _profileSummary = json['profile_summary'];
    _active = json['active'];
    _profileVideoTitle = json['profile_video_title'];
    _profileVideoDescription = json['profile_video_description'];
    _profileVideoUrl = json['profile_video_url'];
    _membershipGradeLeaderPoints = json['membership_grade_leader_points'];
    _membershipGradeNeededLeaderPoints = json['membership_grade_needed_leader_points'];
    _membershipGradePercentAccomplished = json['membership_grade_percent_accomplished'];
    _membershipGradeEligibility = json['membership_grade_eligibility'];
    _matrixUid = json['matrix_uid'];
    _matrixRoomSync = json['matrix_room_sync'];
    _allowApiLogin = json['allow_api_login'];
    _company = json['company'] != null ? Company.fromJson(json['company']) : null;
    _token = json['token'];
    _decoded = json['decoded'] != null ? Decoded.fromJson(json['decoded']) : null;
    _embedSrc = json['embed_src'];
    _fullName = json['full_name'];
    _expertiseString = json['expertise_string'];
    _activeStatus = json['active_status'];
    _avatarCdn = json['avatar_cdn'];
    _holedoUrl = json['holedo_url'];
  }
  int? _id;
  int? _companyId;
  int? _roleId;
  dynamic _companyRoleId;
  dynamic _countryId;
  dynamic _userTitleTypesId;
  dynamic _currencyId;
  dynamic _contactNumberTypesId;
  dynamic _maritalStatusId;
  dynamic _genderId;
  int? _currentMembershipGradeId;
  int? _nextMembershipGradeId;
  String? _slug;
  String? _firstName;
  String? _lastName;
  String? _email;
  int? _emailVisibility;
  dynamic _dateOfBirth;
  dynamic _avatar;
  dynamic _banner;
  dynamic _professionalTitle;
  dynamic _area;
  dynamic _contactNumber;
  bool? _contactNumberVisibility;
  int? _contactableWhatsapp;
  int? _contactableSms;
  dynamic _website;
  bool? _websiteVisibility;
  dynamic _skype;
  bool? _skypeVisibility;
  dynamic _facebook;
  bool? _facebookVisibility;
  dynamic _twitter;
  bool? _twitterVisibility;
  dynamic _google;
  bool? _googleVisibility;
  dynamic _xing;
  bool? _xingVisibility;
  dynamic _linkedin;
  bool? _linkedinVisibility;
  dynamic _proxycurlWhodis;
  bool? _allowRecruiterAccess;
  dynamic _address1;
  dynamic _address2;
  dynamic _addressPostalCode;
  dynamic _addressArea;
  dynamic _workPermits;
  bool? _relocate;
  dynamic _nextJob;
  dynamic _salaryExpectation;
  dynamic _profileSummary;
  dynamic _active;
  dynamic _profileVideoTitle;
  dynamic _profileVideoDescription;
  dynamic _profileVideoUrl;
  int? _membershipGradeLeaderPoints;
  int? _membershipGradeNeededLeaderPoints;
  int? _membershipGradePercentAccomplished;
  bool? _membershipGradeEligibility;
  dynamic _matrixUid;
  String? _matrixRoomSync;
  bool? _allowApiLogin;
  Company? _company;
  String? _token;
  Decoded? _decoded;
  String? _embedSrc;
  String? _fullName;
  String? _expertiseString;
  String? _activeStatus;
  dynamic _avatarCdn;
  String? _holedoUrl;
  User copyWith({  int? id,
    int? companyId,
    int? roleId,
    dynamic companyRoleId,
    dynamic countryId,
    dynamic userTitleTypesId,
    dynamic currencyId,
    dynamic contactNumberTypesId,
    dynamic maritalStatusId,
    dynamic genderId,
    int? currentMembershipGradeId,
    int? nextMembershipGradeId,
    String? slug,
    String? firstName,
    String? lastName,
    String? email,
    int? emailVisibility,
    dynamic dateOfBirth,
    dynamic avatar,
    dynamic banner,
    dynamic professionalTitle,
    dynamic area,
    dynamic contactNumber,
    bool? contactNumberVisibility,
    int? contactableWhatsapp,
    int? contactableSms,
    dynamic website,
    bool? websiteVisibility,
    dynamic skype,
    bool? skypeVisibility,
    dynamic facebook,
    bool? facebookVisibility,
    dynamic twitter,
    bool? twitterVisibility,
    dynamic google,
    bool? googleVisibility,
    dynamic xing,
    bool? xingVisibility,
    dynamic linkedin,
    bool? linkedinVisibility,
    dynamic proxycurlWhodis,
    bool? allowRecruiterAccess,
    dynamic address1,
    dynamic address2,
    dynamic addressPostalCode,
    dynamic addressArea,
    dynamic workPermits,
    bool? relocate,
    dynamic nextJob,
    dynamic salaryExpectation,
    dynamic profileSummary,
    dynamic active,
    dynamic profileVideoTitle,
    dynamic profileVideoDescription,
    dynamic profileVideoUrl,
    int? membershipGradeLeaderPoints,
    int? membershipGradeNeededLeaderPoints,
    int? membershipGradePercentAccomplished,
    bool? membershipGradeEligibility,
    dynamic matrixUid,
    String? matrixRoomSync,
    bool? allowApiLogin,
    Company? company,
    String? token,
    Decoded? decoded,
    String? embedSrc,
    String? fullName,
    String? expertiseString,
    String? activeStatus,
    dynamic avatarCdn,
    String? holedoUrl,
  }) => User(  id: id ?? _id,
    companyId: companyId ?? _companyId,
    roleId: roleId ?? _roleId,
    companyRoleId: companyRoleId ?? _companyRoleId,
    countryId: countryId ?? _countryId,
    userTitleTypesId: userTitleTypesId ?? _userTitleTypesId,
    currencyId: currencyId ?? _currencyId,
    contactNumberTypesId: contactNumberTypesId ?? _contactNumberTypesId,
    maritalStatusId: maritalStatusId ?? _maritalStatusId,
    genderId: genderId ?? _genderId,
    currentMembershipGradeId: currentMembershipGradeId ?? _currentMembershipGradeId,
    nextMembershipGradeId: nextMembershipGradeId ?? _nextMembershipGradeId,
    slug: slug ?? _slug,
    firstName: firstName ?? _firstName,
    lastName: lastName ?? _lastName,
    email: email ?? _email,
    emailVisibility: emailVisibility ?? _emailVisibility,
    dateOfBirth: dateOfBirth ?? _dateOfBirth,
    avatar: avatar ?? _avatar,
    banner: banner ?? _banner,
    professionalTitle: professionalTitle ?? _professionalTitle,
    area: area ?? _area,
    contactNumber: contactNumber ?? _contactNumber,
    contactNumberVisibility: contactNumberVisibility ?? _contactNumberVisibility,
    contactableWhatsapp: contactableWhatsapp ?? _contactableWhatsapp,
    contactableSms: contactableSms ?? _contactableSms,
    website: website ?? _website,
    websiteVisibility: websiteVisibility ?? _websiteVisibility,
    skype: skype ?? _skype,
    skypeVisibility: skypeVisibility ?? _skypeVisibility,
    facebook: facebook ?? _facebook,
    facebookVisibility: facebookVisibility ?? _facebookVisibility,
    twitter: twitter ?? _twitter,
    twitterVisibility: twitterVisibility ?? _twitterVisibility,
    google: google ?? _google,
    googleVisibility: googleVisibility ?? _googleVisibility,
    xing: xing ?? _xing,
    xingVisibility: xingVisibility ?? _xingVisibility,
    linkedin: linkedin ?? _linkedin,
    linkedinVisibility: linkedinVisibility ?? _linkedinVisibility,
    proxycurlWhodis: proxycurlWhodis ?? _proxycurlWhodis,
    allowRecruiterAccess: allowRecruiterAccess ?? _allowRecruiterAccess,
    address1: address1 ?? _address1,
    address2: address2 ?? _address2,
    addressPostalCode: addressPostalCode ?? _addressPostalCode,
    addressArea: addressArea ?? _addressArea,
    workPermits: workPermits ?? _workPermits,
    relocate: relocate ?? _relocate,
    nextJob: nextJob ?? _nextJob,
    salaryExpectation: salaryExpectation ?? _salaryExpectation,
    profileSummary: profileSummary ?? _profileSummary,
    active: active ?? _active,
    profileVideoTitle: profileVideoTitle ?? _profileVideoTitle,
    profileVideoDescription: profileVideoDescription ?? _profileVideoDescription,
    profileVideoUrl: profileVideoUrl ?? _profileVideoUrl,
    membershipGradeLeaderPoints: membershipGradeLeaderPoints ?? _membershipGradeLeaderPoints,
    membershipGradeNeededLeaderPoints: membershipGradeNeededLeaderPoints ?? _membershipGradeNeededLeaderPoints,
    membershipGradePercentAccomplished: membershipGradePercentAccomplished ?? _membershipGradePercentAccomplished,
    membershipGradeEligibility: membershipGradeEligibility ?? _membershipGradeEligibility,
    matrixUid: matrixUid ?? _matrixUid,
    matrixRoomSync: matrixRoomSync ?? _matrixRoomSync,
    allowApiLogin: allowApiLogin ?? _allowApiLogin,
    company: company ?? _company,
    token: token ?? _token,
    decoded: decoded ?? _decoded,
    embedSrc: embedSrc ?? _embedSrc,
    fullName: fullName ?? _fullName,
    expertiseString: expertiseString ?? _expertiseString,
    activeStatus: activeStatus ?? _activeStatus,
    avatarCdn: avatarCdn ?? _avatarCdn,
    holedoUrl: holedoUrl ?? _holedoUrl,
  );
  int? get id => _id;
  int? get companyId => _companyId;
  int? get roleId => _roleId;
  dynamic get companyRoleId => _companyRoleId;
  dynamic get countryId => _countryId;
  dynamic get userTitleTypesId => _userTitleTypesId;
  dynamic get currencyId => _currencyId;
  dynamic get contactNumberTypesId => _contactNumberTypesId;
  dynamic get maritalStatusId => _maritalStatusId;
  dynamic get genderId => _genderId;
  int? get currentMembershipGradeId => _currentMembershipGradeId;
  int? get nextMembershipGradeId => _nextMembershipGradeId;
  String? get slug => _slug;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  int? get emailVisibility => _emailVisibility;
  dynamic get dateOfBirth => _dateOfBirth;
  dynamic get avatar => _avatar;
  dynamic get banner => _banner;
  dynamic get professionalTitle => _professionalTitle;
  dynamic get area => _area;
  dynamic get contactNumber => _contactNumber;
  bool? get contactNumberVisibility => _contactNumberVisibility;
  int? get contactableWhatsapp => _contactableWhatsapp;
  int? get contactableSms => _contactableSms;
  dynamic get website => _website;
  bool? get websiteVisibility => _websiteVisibility;
  dynamic get skype => _skype;
  bool? get skypeVisibility => _skypeVisibility;
  dynamic get facebook => _facebook;
  bool? get facebookVisibility => _facebookVisibility;
  dynamic get twitter => _twitter;
  bool? get twitterVisibility => _twitterVisibility;
  dynamic get google => _google;
  bool? get googleVisibility => _googleVisibility;
  dynamic get xing => _xing;
  bool? get xingVisibility => _xingVisibility;
  dynamic get linkedin => _linkedin;
  bool? get linkedinVisibility => _linkedinVisibility;
  dynamic get proxycurlWhodis => _proxycurlWhodis;
  bool? get allowRecruiterAccess => _allowRecruiterAccess;
  dynamic get address1 => _address1;
  dynamic get address2 => _address2;
  dynamic get addressPostalCode => _addressPostalCode;
  dynamic get addressArea => _addressArea;
  dynamic get workPermits => _workPermits;
  bool? get relocate => _relocate;
  dynamic get nextJob => _nextJob;
  dynamic get salaryExpectation => _salaryExpectation;
  dynamic get profileSummary => _profileSummary;
  dynamic get active => _active;
  dynamic get profileVideoTitle => _profileVideoTitle;
  dynamic get profileVideoDescription => _profileVideoDescription;
  dynamic get profileVideoUrl => _profileVideoUrl;
  int? get membershipGradeLeaderPoints => _membershipGradeLeaderPoints;
  int? get membershipGradeNeededLeaderPoints => _membershipGradeNeededLeaderPoints;
  int? get membershipGradePercentAccomplished => _membershipGradePercentAccomplished;
  bool? get membershipGradeEligibility => _membershipGradeEligibility;
  dynamic get matrixUid => _matrixUid;
  String? get matrixRoomSync => _matrixRoomSync;
  bool? get allowApiLogin => _allowApiLogin;
  Company? get company => _company;
  String? get token => _token;
  Decoded? get decoded => _decoded;
  String? get embedSrc => _embedSrc;
  String? get fullName => _fullName;
  String? get expertiseString => _expertiseString;
  String? get activeStatus => _activeStatus;
  dynamic get avatarCdn => _avatarCdn;
  String? get holedoUrl => _holedoUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['company_id'] = _companyId;
    map['role_id'] = _roleId;
    map['company_role_id'] = _companyRoleId;
    map['country_id'] = _countryId;
    map['user_title_types_id'] = _userTitleTypesId;
    map['currency_id'] = _currencyId;
    map['contact_number_types_id'] = _contactNumberTypesId;
    map['marital_status_id'] = _maritalStatusId;
    map['gender_id'] = _genderId;
    map['current_membership_grade_id'] = _currentMembershipGradeId;
    map['next_membership_grade_id'] = _nextMembershipGradeId;
    map['slug'] = _slug;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['email_visibility'] = _emailVisibility;
    map['date_of_birth'] = _dateOfBirth;
    map['avatar'] = _avatar;
    map['banner'] = _banner;
    map['professional_title'] = _professionalTitle;
    map['area'] = _area;
    map['contact_number'] = _contactNumber;
    map['contact_number_visibility'] = _contactNumberVisibility;
    map['contactable_whatsapp'] = _contactableWhatsapp;
    map['contactable_sms'] = _contactableSms;
    map['website'] = _website;
    map['website_visibility'] = _websiteVisibility;
    map['skype'] = _skype;
    map['skype_visibility'] = _skypeVisibility;
    map['facebook'] = _facebook;
    map['facebook_visibility'] = _facebookVisibility;
    map['twitter'] = _twitter;
    map['twitter_visibility'] = _twitterVisibility;
    map['google'] = _google;
    map['google_visibility'] = _googleVisibility;
    map['xing'] = _xing;
    map['xing_visibility'] = _xingVisibility;
    map['linkedin'] = _linkedin;
    map['linkedin_visibility'] = _linkedinVisibility;
    map['proxycurl_whodis'] = _proxycurlWhodis;
    map['allow_recruiter_access'] = _allowRecruiterAccess;
    map['address_1'] = _address1;
    map['address_2'] = _address2;
    map['address_postal_code'] = _addressPostalCode;
    map['address_area'] = _addressArea;
    map['work_permits'] = _workPermits;
    map['relocate'] = _relocate;
    map['next_job'] = _nextJob;
    map['salary_expectation'] = _salaryExpectation;
    map['profile_summary'] = _profileSummary;
    map['active'] = _active;
    map['profile_video_title'] = _profileVideoTitle;
    map['profile_video_description'] = _profileVideoDescription;
    map['profile_video_url'] = _profileVideoUrl;
    map['membership_grade_leader_points'] = _membershipGradeLeaderPoints;
    map['membership_grade_needed_leader_points'] = _membershipGradeNeededLeaderPoints;
    map['membership_grade_percent_accomplished'] = _membershipGradePercentAccomplished;
    map['membership_grade_eligibility'] = _membershipGradeEligibility;
    map['matrix_uid'] = _matrixUid;
    map['matrix_room_sync'] = _matrixRoomSync;
    map['allow_api_login'] = _allowApiLogin;
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    map['token'] = _token;
    if (_decoded != null) {
      map['decoded'] = _decoded?.toJson();
    }
    map['embed_src'] = _embedSrc;
    map['full_name'] = _fullName;
    map['expertise_string'] = _expertiseString;
    map['active_status'] = _activeStatus;
    map['avatar_cdn'] = _avatarCdn;
    map['holedo_url'] = _holedoUrl;
    return map;
  }

}

/// sub : 3829
/// exp : 1967722325

Decoded decodedFromJson(String str) => Decoded.fromJson(json.decode(str));
String decodedToJson(Decoded data) => json.encode(data.toJson());
class Decoded {
  Decoded({
    int? sub,
    int? exp,}){
    _sub = sub;
    _exp = exp;
  }

  Decoded.fromJson(dynamic json) {
    _sub = json['sub'];
    _exp = json['exp'];
  }
  int? _sub;
  int? _exp;
  Decoded copyWith({  int? sub,
    int? exp,
  }) => Decoded(  sub: sub ?? _sub,
    exp: exp ?? _exp,
  );
  int? get sub => _sub;
  int? get exp => _exp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub'] = _sub;
    map['exp'] = _exp;
    return map;
  }

}

/// id : 1901
/// organization_id : null
/// slug : "69booking"
/// name : "69booking"
/// logo : "/uploads/images/companies/69booking.png"
/// tmr : false
/// address_line_1 : null
/// address_line_2 : null
/// address_line_3 : null
/// city : null
/// country_id : null
/// created : "2018-06-29T09:47:50+02:00"
/// modified : "2020-05-27T10:02:50+02:00"
/// description : ""
/// banner_image : ""
/// computed_logo : "https://res.cloudinary.com/hospitalityleaders/image/upload/w_500,f_auto,q_auto/v1607348953/uploads/images/companies/69booking.png"
/// computed_banner_image : null
/// combined_line_address : ""
/// combined_city_country : ""

Company companyFromJson(String str) => Company.fromJson(json.decode(str));
String companyToJson(Company data) => json.encode(data.toJson());
class Company {
  Company({
    int? id,
    dynamic organizationId,
    String? slug,
    String? name,
    String? logo,
    bool? tmr,
    dynamic addressLine1,
    dynamic addressLine2,
    dynamic addressLine3,
    dynamic city,
    dynamic countryId,
    String? created,
    String? modified,
    String? description,
    String? bannerImage,
    String? computedLogo,
    dynamic computedBannerImage,
    String? combinedLineAddress,
    String? combinedCityCountry,}){
    _id = id;
    _organizationId = organizationId;
    _slug = slug;
    _name = name;
    _logo = logo;
    _tmr = tmr;
    _addressLine1 = addressLine1;
    _addressLine2 = addressLine2;
    _addressLine3 = addressLine3;
    _city = city;
    _countryId = countryId;
    _created = created;
    _modified = modified;
    _description = description;
    _bannerImage = bannerImage;
    _computedLogo = computedLogo;
    _computedBannerImage = computedBannerImage;
    _combinedLineAddress = combinedLineAddress;
    _combinedCityCountry = combinedCityCountry;
  }

  Company.fromJson(dynamic json) {
    _id = json['id'];
    _organizationId = json['organization_id'];
    _slug = json['slug'];
    _name = json['name'];
    _logo = json['logo'];
    _tmr = json['tmr'];
    _addressLine1 = json['address_line_1'];
    _addressLine2 = json['address_line_2'];
    _addressLine3 = json['address_line_3'];
    _city = json['city'];
    _countryId = json['country_id'];
    _created = json['created'];
    _modified = json['modified'];
    _description = json['description'];
    _bannerImage = json['banner_image'];
    _computedLogo = json['computed_logo'];
    _computedBannerImage = json['computed_banner_image'];
    _combinedLineAddress = json['combined_line_address'];
    _combinedCityCountry = json['combined_city_country'];
  }
  int? _id;
  dynamic _organizationId;
  String? _slug;
  String? _name;
  String? _logo;
  bool? _tmr;
  dynamic _addressLine1;
  dynamic _addressLine2;
  dynamic _addressLine3;
  dynamic _city;
  dynamic _countryId;
  String? _created;
  String? _modified;
  String? _description;
  String? _bannerImage;
  String? _computedLogo;
  dynamic _computedBannerImage;
  String? _combinedLineAddress;
  String? _combinedCityCountry;
  Company copyWith({  int? id,
    dynamic organizationId,
    String? slug,
    String? name,
    String? logo,
    bool? tmr,
    dynamic addressLine1,
    dynamic addressLine2,
    dynamic addressLine3,
    dynamic city,
    dynamic countryId,
    String? created,
    String? modified,
    String? description,
    String? bannerImage,
    String? computedLogo,
    dynamic computedBannerImage,
    String? combinedLineAddress,
    String? combinedCityCountry,
  }) => Company(  id: id ?? _id,
    organizationId: organizationId ?? _organizationId,
    slug: slug ?? _slug,
    name: name ?? _name,
    logo: logo ?? _logo,
    tmr: tmr ?? _tmr,
    addressLine1: addressLine1 ?? _addressLine1,
    addressLine2: addressLine2 ?? _addressLine2,
    addressLine3: addressLine3 ?? _addressLine3,
    city: city ?? _city,
    countryId: countryId ?? _countryId,
    created: created ?? _created,
    modified: modified ?? _modified,
    description: description ?? _description,
    bannerImage: bannerImage ?? _bannerImage,
    computedLogo: computedLogo ?? _computedLogo,
    computedBannerImage: computedBannerImage ?? _computedBannerImage,
    combinedLineAddress: combinedLineAddress ?? _combinedLineAddress,
    combinedCityCountry: combinedCityCountry ?? _combinedCityCountry,
  );
  int? get id => _id;
  dynamic get organizationId => _organizationId;
  String? get slug => _slug;
  String? get name => _name;
  String? get logo => _logo;
  bool? get tmr => _tmr;
  dynamic get addressLine1 => _addressLine1;
  dynamic get addressLine2 => _addressLine2;
  dynamic get addressLine3 => _addressLine3;
  dynamic get city => _city;
  dynamic get countryId => _countryId;
  String? get created => _created;
  String? get modified => _modified;
  String? get description => _description;
  String? get bannerImage => _bannerImage;
  String? get computedLogo => _computedLogo;
  dynamic get computedBannerImage => _computedBannerImage;
  String? get combinedLineAddress => _combinedLineAddress;
  String? get combinedCityCountry => _combinedCityCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['organization_id'] = _organizationId;
    map['slug'] = _slug;
    map['name'] = _name;
    map['logo'] = _logo;
    map['tmr'] = _tmr;
    map['address_line_1'] = _addressLine1;
    map['address_line_2'] = _addressLine2;
    map['address_line_3'] = _addressLine3;
    map['city'] = _city;
    map['country_id'] = _countryId;
    map['created'] = _created;
    map['modified'] = _modified;
    map['description'] = _description;
    map['banner_image'] = _bannerImage;
    map['computed_logo'] = _computedLogo;
    map['computed_banner_image'] = _computedBannerImage;
    map['combined_line_address'] = _combinedLineAddress;
    map['combined_city_country'] = _combinedCityCountry;
    return map;
  }

}