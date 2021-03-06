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

defmodule GoogleApi.PlusDomains.V1.Model.PersonOrganizations do
  @moduledoc """


  ## Attributes

  - department (String.t): The department within the organization. Deprecated. Defaults to: `null`.
  - description (String.t): A short description of the person&#39;s role in this organization. Deprecated. Defaults to: `null`.
  - endDate (String.t): The date that the person left this organization. Defaults to: `null`.
  - location (String.t): The location of this organization. Deprecated. Defaults to: `null`.
  - name (String.t): The name of the organization. Defaults to: `null`.
  - primary (boolean()): If \&quot;true\&quot;, indicates this organization is the person&#39;s primary one, which is typically interpreted as the current one. Defaults to: `null`.
  - startDate (String.t): The date that the person joined this organization. Defaults to: `null`.
  - title (String.t): The person&#39;s job title or role within the organization. Defaults to: `null`.
  - type (String.t): The type of organization. Possible values include, but are not limited to, the following values:   - \&quot;work\&quot; - Work.  - \&quot;school\&quot; - School. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :department => any(),
          :description => any(),
          :endDate => any(),
          :location => any(),
          :name => any(),
          :primary => any(),
          :startDate => any(),
          :title => any(),
          :type => any()
        }

  field(:department)
  field(:description)
  field(:endDate)
  field(:location)
  field(:name)
  field(:primary)
  field(:startDate)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.PersonOrganizations do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.PersonOrganizations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.PersonOrganizations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
