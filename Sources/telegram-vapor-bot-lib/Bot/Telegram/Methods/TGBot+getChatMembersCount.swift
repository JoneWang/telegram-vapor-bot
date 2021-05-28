// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `getChatMembersCount` method
    struct GetChatMembersCountParams: Encodable {

        /// Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Custom keys for coding/decoding `GetChatMembersCountParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
        }

        public init(chatId: ChatId) {
            self.chatId = chatId
        }
    }

    /**
     Use this method to get the number of members in a chat. Returns Int on success.

     SeeAlso Telegram Bot API Reference:
     [GetChatMembersCountParams](https://core.telegram.org/bots/api#getchatmemberscount)
     
     - Parameters:
         - params: Parameters container, see `GetChatMembersCountParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Int` type
     */
    @discardableResult
    func getChatMembersCount(params: GetChatMembersCountParams) throws -> EventLoopFuture<Int> {
        let methodURL: URI = .init(string: getMethodURL("getChatMembersCount"))
        let future: EventLoopFuture<Int> = tgClient.post(methodURL, params: params)
        return future
    }
}