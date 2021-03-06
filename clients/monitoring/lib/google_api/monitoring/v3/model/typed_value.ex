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

defmodule GoogleApi.Monitoring.V3.Model.TypedValue do
  @moduledoc """
  A single strongly-typed value.

  ## Attributes

  - boolValue (boolean()): A Boolean value: true or false. Defaults to: `null`.
  - distributionValue (Distribution): A distribution value. Defaults to: `null`.
  - doubleValue (float()): A 64-bit double-precision floating-point number. Its magnitude is approximately &amp;plusmn;10&lt;sup&gt;&amp;plusmn;300&lt;/sup&gt; and it has 16 significant digits of precision. Defaults to: `null`.
  - int64Value (String.t): A 64-bit integer. Its range is approximately &amp;plusmn;9.2x10&lt;sup&gt;18&lt;/sup&gt;. Defaults to: `null`.
  - stringValue (String.t): A variable-length string value. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => any(),
          :distributionValue => GoogleApi.Monitoring.V3.Model.Distribution.t(),
          :doubleValue => any(),
          :int64Value => any(),
          :stringValue => any()
        }

  field(:boolValue)
  field(:distributionValue, as: GoogleApi.Monitoring.V3.Model.Distribution)
  field(:doubleValue)
  field(:int64Value)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.TypedValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
