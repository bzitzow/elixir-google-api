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

defmodule GoogleApi.Dataproc.V1.Model.InstantiateWorkflowTemplateRequest do
  @moduledoc """
  A request to instantiate a workflow template.

  ## Attributes

  - parameters (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Map from parameter names to values that should be used for those parameters. Values may not exceed 100 characters. Defaults to: `null`.
  - requestId (String.t): Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters. Defaults to: `null`.
  - version (integer()): Optional. The version of workflow template to instantiate. If specified, the workflow will be instantiated only if the current version of the workflow template has the supplied version.This option cannot be used to instantiate a previous version of workflow template. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => map(),
          :requestId => any(),
          :version => any()
        }

  field(:parameters, type: :map)
  field(:requestId)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.InstantiateWorkflowTemplateRequest do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.InstantiateWorkflowTemplateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.InstantiateWorkflowTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
