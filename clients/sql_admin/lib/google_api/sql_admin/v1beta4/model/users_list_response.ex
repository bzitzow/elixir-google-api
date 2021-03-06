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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse do
  @moduledoc """
  User list response.

  ## Attributes

  - items ([User]): List of user resources in the instance. Defaults to: `null`.
  - kind (String.t): This is always sql#usersList. Defaults to: `null`.
  - nextPageToken (String.t): An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.SQLAdmin.V1beta4.Model.User.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:items, as: GoogleApi.SQLAdmin.V1beta4.Model.User, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
