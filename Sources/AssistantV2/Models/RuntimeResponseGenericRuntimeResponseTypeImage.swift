/**
 * (C) Copyright IBM Corp. 2020, 2021.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 RuntimeResponseGenericRuntimeResponseTypeImage.

 Enums with an associated value of RuntimeResponseGenericRuntimeResponseTypeImage:
    RuntimeResponseGeneric
 */
public struct RuntimeResponseGenericRuntimeResponseTypeImage: Codable, Equatable {

    /**
     The type of response returned by the dialog node. The specified response type must be supported by the client
     application or channel.
     */
    public var responseType: String

    /**
     The `https:` URL of the image.
     */
    public var source: String

    /**
     The title to show before the response.
     */
    public var title: String?

    /**
     The description to show with the the response.
     */
    public var description: String?

    /**
     An array of objects specifying channels for which the response is intended. If **channels** is present, the
     response is intended for a built-in integration and should not be handled by an API client.
     */
    public var channels: [ResponseGenericChannel]?

    /**
     Descriptive text that can be used for screen readers or other situations where the image cannot be seen.
     */
    public var altText: String?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case responseType = "response_type"
        case source = "source"
        case title = "title"
        case description = "description"
        case channels = "channels"
        case altText = "alt_text"
    }

}
