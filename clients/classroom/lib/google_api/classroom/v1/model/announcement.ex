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

defmodule GoogleApi.Classroom.V1.Model.Announcement do
  @moduledoc """
  Announcement created by a teacher for students of the course

  ## Attributes

  - alternateLink (String.t): Absolute link to this announcement in the Classroom web UI. This is only populated if &#x60;state&#x60; is &#x60;PUBLISHED&#x60;.  Read-only. Defaults to: `null`.
  - assigneeMode (String.t): Assignee mode of the announcement. If unspecified, the default value is &#x60;ALL_STUDENTS&#x60;. Defaults to: `null`.
    - Enum - one of [ASSIGNEE_MODE_UNSPECIFIED, ALL_STUDENTS, INDIVIDUAL_STUDENTS]
  - courseId (String.t): Identifier of the course.  Read-only. Defaults to: `null`.
  - creationTime (DateTime.t): Timestamp when this announcement was created.  Read-only. Defaults to: `null`.
  - creatorUserId (String.t): Identifier for the user that created the announcement.  Read-only. Defaults to: `null`.
  - id (String.t): Classroom-assigned identifier of this announcement, unique per course.  Read-only. Defaults to: `null`.
  - individualStudentsOptions (IndividualStudentsOptions): Identifiers of students with access to the announcement. This field is set only if &#x60;assigneeMode&#x60; is &#x60;INDIVIDUAL_STUDENTS&#x60;. If the &#x60;assigneeMode&#x60; is &#x60;INDIVIDUAL_STUDENTS&#x60;, then only students specified in this field will be able to see the announcement. Defaults to: `null`.
  - materials ([Material]): Additional materials.  Announcements must have no more than 20 material items. Defaults to: `null`.
  - scheduledTime (DateTime.t): Optional timestamp when this announcement is scheduled to be published. Defaults to: `null`.
  - state (String.t): Status of this announcement. If unspecified, the default state is &#x60;DRAFT&#x60;. Defaults to: `null`.
    - Enum - one of [ANNOUNCEMENT_STATE_UNSPECIFIED, PUBLISHED, DRAFT, DELETED]
  - text (String.t): Description of this announcement. The text must be a valid UTF-8 string containing no more than 30,000 characters. Defaults to: `null`.
  - updateTime (DateTime.t): Timestamp of the most recent change to this announcement.  Read-only. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => any(),
          :assigneeMode => any(),
          :courseId => any(),
          :creationTime => DateTime.t(),
          :creatorUserId => any(),
          :id => any(),
          :individualStudentsOptions =>
            GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t(),
          :materials => list(GoogleApi.Classroom.V1.Model.Material.t()),
          :scheduledTime => DateTime.t(),
          :state => any(),
          :text => any(),
          :updateTime => DateTime.t()
        }

  field(:alternateLink)
  field(:assigneeMode)
  field(:courseId)
  field(:creationTime, as: DateTime)
  field(:creatorUserId)
  field(:id)
  field(:individualStudentsOptions, as: GoogleApi.Classroom.V1.Model.IndividualStudentsOptions)
  field(:materials, as: GoogleApi.Classroom.V1.Model.Material, type: :list)
  field(:scheduledTime, as: DateTime)
  field(:state)
  field(:text)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Announcement do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Announcement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Announcement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
