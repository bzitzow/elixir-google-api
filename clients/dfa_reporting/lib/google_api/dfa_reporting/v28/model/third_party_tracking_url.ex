# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl do
  @moduledoc """
  Third-party Tracking URL.

  ## Attributes

  - thirdPartyUrlType (String.t): Third-party URL type for in-stream video creatives. Defaults to: `null`.
    - Enum - one of [CLICK_TRACKING, IMPRESSION, RICH_MEDIA_BACKUP_IMPRESSION, RICH_MEDIA_IMPRESSION, RICH_MEDIA_RM_IMPRESSION, SURVEY, VIDEO_COMPLETE, VIDEO_CUSTOM, VIDEO_FIRST_QUARTILE, VIDEO_FULLSCREEN, VIDEO_MIDPOINT, VIDEO_MUTE, VIDEO_PAUSE, VIDEO_PROGRESS, VIDEO_REWIND, VIDEO_SKIP, VIDEO_START, VIDEO_STOP, VIDEO_THIRD_QUARTILE]
  - url (String.t): URL for the specified third-party URL type. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :thirdPartyUrlType => any(),
          :url => any()
        }

  field(:thirdPartyUrlType)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
