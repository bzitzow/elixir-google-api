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

defmodule GoogleApi.Dataflow.V1b3.Model.InstructionOutput do
  @moduledoc """
  An output of an instruction.

  ## Attributes

  - codec (%{optional(String.t) &#x3D;&gt; String.t}): The codec to use to encode data being written via this output. Defaults to: `null`.
  - name (String.t): The user-provided name of this output. Defaults to: `null`.
  - onlyCountKeyBytes (boolean()): For system-generated byte and mean byte metrics, certain instructions should only report the key size. Defaults to: `null`.
  - onlyCountValueBytes (boolean()): For system-generated byte and mean byte metrics, certain instructions should only report the value size. Defaults to: `null`.
  - originalName (String.t): System-defined name for this output in the original workflow graph. Outputs that do not contribute to an original instruction do not set this. Defaults to: `null`.
  - systemName (String.t): System-defined name of this output. Unique across the workflow. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codec => map(),
          :name => any(),
          :onlyCountKeyBytes => any(),
          :onlyCountValueBytes => any(),
          :originalName => any(),
          :systemName => any()
        }

  field(:codec, type: :map)
  field(:name)
  field(:onlyCountKeyBytes)
  field(:onlyCountValueBytes)
  field(:originalName)
  field(:systemName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.InstructionOutput do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.InstructionOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.InstructionOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
