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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  @moduledoc """
  Options defining a file or a set of files within a Google Cloud Storage bucket.

  ## Attributes

  - bytesLimitPerFile (String.t): Max number of bytes to scan from a file. If a scanned file&#39;s size is bigger than this value then the rest of the bytes are omitted. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Defaults to: `null`.
  - bytesLimitPerFilePercent (integer()): Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Defaults to: `null`.
  - fileSet (GooglePrivacyDlpV2FileSet): The set of one or more files to scan. Defaults to: `null`.
  - fileTypes ([String.t]): List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Defaults to: `null`.
    - Enum - one of 
  - filesLimitPercent (integer()): Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Defaults to: `null`.
  - sampleMethod (String.t):  Defaults to: `null`.
    - Enum - one of [SAMPLE_METHOD_UNSPECIFIED, TOP, RANDOM_START]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesLimitPerFile => any(),
          :bytesLimitPerFilePercent => any(),
          :fileSet => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileSet.t(),
          :fileTypes => list(any()),
          :filesLimitPercent => any(),
          :sampleMethod => any()
        }

  field(:bytesLimitPerFile)
  field(:bytesLimitPerFilePercent)
  field(:fileSet, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileSet)
  field(:fileTypes, type: :list)
  field(:filesLimitPercent)
  field(:sampleMethod)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
