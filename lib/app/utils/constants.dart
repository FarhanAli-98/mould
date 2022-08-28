// ignore_for_file: constant_identifier_names

enum FeedType {
  groupInvitation,
  groupCreated,
  groupJoined,
  requestSent,
  prayer,
  praise,
  prayerRequest,
  silentPrayer,
  comment,
  prayerShared,
  praiseShared,
  viewedPrayer,
  viewedPraise,
  favoritePrayer,
  prayerAnswered,
  newConversation,
  joinRequest,
  trendingActivity,
  likePrayer,
  likePraise
}

enum NotificationType {
  prayerSharedInGroup,
  prayerMarkedAsFavourite,
  prayerAnswered,
  recordedPrayer,
  sharedSilentPrayer,
  addedCommentOnPrayer,
  profileReminderNotification,
  groupReminderNotification
}

enum NotifType {
  groupInvitation,
  groupJoined,
  prayer,
  praise,
  silentPrayer,
  comment,
  favoritePrayer,
  prayerAnswered,
  profileReminder,
  groupReminder,
  newConversation,
  prayerRequest
}

enum RecordPrayerStep {
  recorderScreen,
  tagScreen,
  groupScreen,
  conversationScreen
}

enum AuthStatus { notSignedIn, signedIn }
enum ContentType { Audio, Video }
enum AnalyticsType { PrayerWorkFlow, NonPrayerWorkflow }

enum SubscriptionRenewalPeriod {
  Weekly,
  Monthly,
  Yearly,
}

enum PrayerContentType {
  Prayer,
  OriginatedContent,
  SermonContent,
}
