// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

/// DESCRIPTION:
/// Use this method to get a list of administrators in a chat. On success, returns an Array of ChatMember objects that contains information about all chat administrators except other bots. If the chat is a group or a supergroup and no administrators were appointed, only the creator will be returned.


/// Parameters container struct for `getChatAdministrators` method
public struct TGGetChatAdministratorsParams: Encodable {

    /// Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    public var chatId: TGChatId

    /// Custom keys for coding/decoding `GetChatAdministratorsParams` struct
    public enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
    }

    public init(chatId: TGChatId) {
            self.chatId = chatId
    }
}


public extension TGBot {

/**
 Use this method to get a list of administrators in a chat. On success, returns an Array of ChatMember objects that contains information about all chat administrators except other bots. If the chat is a group or a supergroup and no administrators were appointed, only the creator will be returned.

 SeeAlso Telegram Bot API Reference:
 [GetChatAdministratorsParams](https://core.telegram.org/bots/api#getchatadministrators)
 
 - Parameters:
     - params: Parameters container, see `GetChatAdministratorsParams` struct
 - Throws: Throws on errors
 - Returns: EventLoopFuture of `[TGChatMember]` type
 */
    @discardableResult
    func getChatAdministrators(params: TGGetChatAdministratorsParams) throws -> EventLoopFuture<[TGChatMember]> {
        let methodURL: URI = .init(string: getMethodURL("getChatAdministrators"))
        let future: EventLoopFuture<[TGChatMember]> = tgClient.post(methodURL, params: params, as: nil)
        return future
    }
}