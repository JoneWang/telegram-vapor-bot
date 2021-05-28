// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `sendMediaGroup` method
    struct SendMediaGroupParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// A JSON-serialized array describing messages to be sent, must include 2-10 items
        var media: [InputMedia]

        /// Sends messages silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the messages are a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Custom keys for coding/decoding `SendMediaGroupParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case media = "media"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
        }

        public init(chatId: ChatId, media: [InputMedia], disableNotification: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil) {
            self.chatId = chatId
            self.media = media
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
        }
    }

    /**
     Use this method to send a group of photos, videos, documents or audios as an album. Documents and audio files can be only grouped in an album with messages of the same type. On success, an array of Messages that were sent is returned.

     SeeAlso Telegram Bot API Reference:
     [SendMediaGroupParams](https://core.telegram.org/bots/api#sendmediagroup)
     
     - Parameters:
         - params: Parameters container, see `SendMediaGroupParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `[Message]` type
     */
    @discardableResult
    func sendMediaGroup(params: SendMediaGroupParams) throws -> EventLoopFuture<[Message]> {
        let methodURL: URI = .init(string: getMethodURL("sendMediaGroup"))
        let future: EventLoopFuture<[Message]> = tgClient.post(methodURL, params: params)
        return future
    }
}