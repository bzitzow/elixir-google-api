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

defmodule GoogleApi.AndroidManagement.V1.Model.ExternalData do
  @moduledoc """
  Data hosted at an external location. The data is to be downloaded by Android Device Policy and verified against the hash.

  ## Attributes

  - sha256Hash (String.t): The base-64 encoded SHA-256 hash of the content hosted at url. If the content doesn&#39;t match this hash, Android Device Policy won&#39;t use the data. Defaults to: `null`.
  - url (String.t): The absolute URL to the data, which must use either the http or https scheme. Android Device Policy doesn&#39;t provide any credentials in the GET request, so the URL must be publicly accessible. Including a long, random component in the URL may be used to prevent attackers from discovering the URL. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha256Hash => any(),
          :url => any()
        }

  field(:sha256Hash)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ExternalData do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ExternalData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ExternalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
