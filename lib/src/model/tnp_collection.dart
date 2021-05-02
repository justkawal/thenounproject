part of thenounproject;

/**
    "collection": {
    "author": {
      "location": "Los Angeles, California, US",
      "name": "Iconathon",
      "permalink": "/Iconathon1",
      "username": "Iconathon1"
    },
    "author_id": "12701",
    "date_created": "2012-01-27 19:15:26",
    "date_updated": "2012-12-11 08:40:24",
    "description": "",
    "icon_count": "183",
    "id": "4",
    "is_collaborative": "",
    "is_featured": "1",
    "is_published": "0",
    "is_store_item": "0",
    "name": "Iconathon",
    "permalink": "/Iconathon1/collection/iconathon",
    "slug": "iconathon",
    "sponsor": {},
    "sponsor_campaign_link": "",
    "sponsor_id": "",
    "tags": [],
    "template": "24"
  }
 */
class TNPCollection {
  String? author_id;
  DateTime? date_created;
  DateTime? date_updated;

  String? description;
  int icon_count = 0;
}
