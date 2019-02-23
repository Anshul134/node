const APP_DATA_OBJ = {
  APP_DB : {
    MAIN_DB : "guidhwbq_guideVilla",
    BLOG_DB : "guidhwbq_guideVilla_blogs"
  },
  DB_TABLES : {
    EVENT_TABLE : "tour_events",
    GUIDE_TABLE : "tour_guides",
    PACKAGES_TABLE : "packages"
  },
  APP_ROUTES : {
    APP_HOME : "/",
    DB_MIGRATE : {
      MIGRATE_INDEX : "/",
      MIGRATE_CREATE_TBL : "/create",
      MIGRATE_TRANSFER_EVENTS : "/transfer_event",
      MIGRATE_TRANSFER_PACKAGE : "/transfer_package",
      MIGRATE_TRANSFER_GUIDE : "/transfer_guide",
    }
  }
}

module.exports = APP_DATA_OBJ;
