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

defmodule GoogleApi.CloudBilling.V1.Model.Service do
  @moduledoc """
  Encapsulates a single service in Google Cloud Platform.

  ## Attributes

  - displayName (String.t): A human readable display name for this service. Defaults to: `null`.
  - name (String.t): The resource name for the service. Example: \&quot;services/DA34-426B-A397\&quot; Defaults to: `null`.
  - serviceId (String.t): The identifier for the service. Example: \&quot;DA34-426B-A397\&quot; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :name => any(),
          :serviceId => any()
        }

  field(:displayName)
  field(:name)
  field(:serviceId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.Service do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
