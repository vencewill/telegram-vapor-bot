// Telegram-vapor-bot - Telegram Bot Swift SDK.

/**
 Describes actions that a non-administrator user is allowed to take in a chat.

 SeeAlso Telegram Bot API Reference:
 [ChatPermissions](https://core.telegram.org/bots/api#chatpermissions)
 */
public final class TGChatPermissions: Codable {

    /// Custom keys for coding/decoding `ChatPermissions` struct
    public enum CodingKeys: String, CodingKey {
        case canSendMessages = "can_send_messages"
        case canSendMediaMessages = "can_send_media_messages"
        case canSendPolls = "can_send_polls"
        case canSendOtherMessages = "can_send_other_messages"
        case canAddWebPagePreviews = "can_add_web_page_previews"
        case canChangeInfo = "can_change_info"
        case canInviteUsers = "can_invite_users"
        case canPinMessages = "can_pin_messages"
        case canManageTopics = "can_manage_topics"
    }

    /// Optional. True, if the user is allowed to send text messages, contacts, locations and venues
    public var canSendMessages: Bool?

    /// Optional. True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
    public var canSendMediaMessages: Bool?

    /// Optional. True, if the user is allowed to send polls, implies can_send_messages
    public var canSendPolls: Bool?

    /// Optional. True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
    public var canSendOtherMessages: Bool?

    /// Optional. True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
    public var canAddWebPagePreviews: Bool?

    /// Optional. True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups
    public var canChangeInfo: Bool?

    /// Optional. True, if the user is allowed to invite new users to the chat
    public var canInviteUsers: Bool?

    /// Optional. True, if the user is allowed to pin messages. Ignored in public supergroups
    public var canPinMessages: Bool?

    /// Optional. True, if the user is allowed to create forum topics. If omitted defaults to the value of can_pin_messages
    public var canManageTopics: Bool?

    public init (canSendMessages: Bool? = nil, canSendMediaMessages: Bool? = nil, canSendPolls: Bool? = nil, canSendOtherMessages: Bool? = nil, canAddWebPagePreviews: Bool? = nil, canChangeInfo: Bool? = nil, canInviteUsers: Bool? = nil, canPinMessages: Bool? = nil, canManageTopics: Bool? = nil) {
        self.canSendMessages = canSendMessages
        self.canSendMediaMessages = canSendMediaMessages
        self.canSendPolls = canSendPolls
        self.canSendOtherMessages = canSendOtherMessages
        self.canAddWebPagePreviews = canAddWebPagePreviews
        self.canChangeInfo = canChangeInfo
        self.canInviteUsers = canInviteUsers
        self.canPinMessages = canPinMessages
        self.canManageTopics = canManageTopics
    }
}
