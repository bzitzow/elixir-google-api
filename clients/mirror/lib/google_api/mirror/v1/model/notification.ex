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

defmodule GoogleApi.Mirror.V1.Model.Notification do
  @moduledoc """
  A notification delivered by the API.

  ## Attributes

  - collection (String.t): The collection that generated the notification. Defaults to: `null`.
  - itemId (String.t): The ID of the item that generated the notification. Defaults to: `null`.
  - operation (String.t): The type of operation that generated the notification. Defaults to: `null`.
  - userActions ([UserAction]): A list of actions taken by the user that triggered the notification. Defaults to: `null`.
  - userToken (String.t): The user token provided by the service when it subscribed for notifications. Defaults to: `null`.
  - verifyToken (String.t): The secret verify token provided by the service when it subscribed for notifications. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collection => any(),
          :itemId => any(),
          :operation => any(),
          :userActions => list(GoogleApi.Mirror.V1.Model.UserAction.t()),
          :userToken => any(),
          :verifyToken => any()
        }

  field(:collection)
  field(:itemId)
  field(:operation)
  field(:userActions, as: GoogleApi.Mirror.V1.Model.UserAction, type: :list)
  field(:userToken)
  field(:verifyToken)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Notification do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Notification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Notification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
