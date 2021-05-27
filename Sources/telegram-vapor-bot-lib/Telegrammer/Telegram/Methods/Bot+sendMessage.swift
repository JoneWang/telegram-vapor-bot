// Telegrammer - Telegram TGBot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.
import Vapor

public extension TGBot {

    /// Parameters container struct for `sendMessage` method
    struct SendMessageParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Text of the message to be sent, 1-4096 characters after entities parsing
        var text: String

        /// Mode for parsing entities in the message text. See formatting options for more details.
        var parseMode: ParseMode?

        /// Disables link previews for links in this message
        var disableWebPagePreview: Bool?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendMessageParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case text = "text"
            case parseMode = "parse_mode"
            case disableWebPagePreview = "disable_web_page_preview"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, text: String, parseMode: ParseMode? = nil, disableWebPagePreview: Bool? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.text = text
            self.parseMode = parseMode
            self.disableWebPagePreview = disableWebPagePreview
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    @discardableResult
    func sendMessage(params: SendMessageParams) throws -> EventLoopFuture<Message> {
        let methodURL: URI = .init(string: getMethodURL("sendMessage"))
        let future: EventLoopFuture<Message> = tgClient.post(methodURL, params: params)
        return future
    }
}
