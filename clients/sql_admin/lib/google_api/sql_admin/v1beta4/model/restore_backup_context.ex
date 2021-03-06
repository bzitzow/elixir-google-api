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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.RestoreBackupContext do
  @moduledoc """
  Database instance restore from backup context.

  ## Attributes

  - backupRunId (String.t): The ID of the backup run to restore from. Defaults to: `null`.
  - instanceId (String.t): The ID of the instance that the backup was taken from. Defaults to: `null`.
  - kind (String.t): This is always sql#restoreBackupContext. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupRunId => any(),
          :instanceId => any(),
          :kind => any()
        }

  field(:backupRunId)
  field(:instanceId)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.RestoreBackupContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.RestoreBackupContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.RestoreBackupContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
