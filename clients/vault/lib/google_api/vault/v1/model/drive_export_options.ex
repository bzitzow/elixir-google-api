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

defmodule GoogleApi.Vault.V1.Model.DriveExportOptions do
  @moduledoc """
  The options for Drive export.

  ## Attributes

  - includeAccessInfo (boolean()): Set to true to include access level information for users with &lt;a href&#x3D;\&quot;https://support.google.com/vault/answer/6099459#metadata\&quot;&gt;indirect access&lt;/a&gt; to files. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeAccessInfo => any()
        }

  field(:includeAccessInfo)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.DriveExportOptions do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.DriveExportOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.DriveExportOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
