import Vapor
import Fluent

final class Race: Model {
    var id: Node?
    var name: String
    /*
    var btnImagePath: String?
    var startDatetime: String?
    var liveDataProvider: String?
    var liveDataProviderEventId: String?
    var liveStreamUrl: String?
    var youtubeChannel: String?
    var isLiveStreamEnabled: Bool
    var isLiveStreamActive: Bool
    var isGeoTrackingEnabled: Bool
    var sponsorImagePath: String?
    var eventInfoImagePath: String?
    var eventText: String?
    var touristAppLinkIos: String?
    var touristAppLinkAndroid: String?
    var fbPage: String?
    var hashTag: String?
    var isActive: Bool
    var created: String
    var modified: String
   */
    
    init(node: Node, in context: Context) throws {
        id = try node.extract("id")
        name = try node.extract("name")
        /*
        btnImagePath = try? node.extract("btn_image_id")
        startDatetime = try? node.extract("start_datetime")
        liveDataProvider = try? node.extract("live_data_provider")
        liveDataProviderEventId = try? node.extract("live_data_provider_event_id")
        liveStreamUrl = try? node.extract("live_stream_url")
        youtubeChannel = try? node.extract("youtube_channel")
        isLiveStreamEnabled = try node.extract("is_live_stream_enabled")
        isLiveStreamActive = try node.extract("is_live_stream_active")
        isGeoTrackingEnabled = try node.extract("is_geo_tracking_enabled")
        sponsorImagePath = try? node.extract("sponsor_image_id")
        eventInfoImagePath = try? node.extract("event_info_image_id")
        eventText = try? node.extract("event_text")
        touristAppLinkIos = try? node.extract("tourist_app_link_ios")
        touristAppLinkAndroid = try? node.extract("tourist_app_link_android")
        fbPage = try? node.extract("fb_page")
        hashTag = try? node.extract("hashtag")
        isActive = try node.extract("is_active")
        hashTag = try? node.extract("hashtag")
        created = try node.extract("created")
        modified = try node.extract("modified")
 */
    }
    
    func makeNode() throws -> Node {
        return try Node(node: [
            "id": id,
            "name": name
            //"btn_image_url": nil,
            //"sponsor_image_url": nil,
            //"event_info_image_url": nil
        ])
    }
    
    static func prepare(_ database: Database) throws {
    }
    
    static func revert(_ database: Database) throws {
    }
}
