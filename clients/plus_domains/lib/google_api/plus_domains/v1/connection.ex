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

defmodule GoogleApi.PlusDomains.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.PlusDomains.V1.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # View your circles and the people and pages in them
      "https://www.googleapis.com/auth/plus.circles.read",
      # Manage your circles and add people and pages. People and pages you add to your circles will be notified. Others may see this information publicly. People you add to circles can use Hangouts with you.
      "https://www.googleapis.com/auth/plus.circles.write",
      # Know the list of people in your circles, your age range, and language
      "https://www.googleapis.com/auth/plus.login",
      # Know who you are on Google
      "https://www.googleapis.com/auth/plus.me",
      # Send your photos and videos to Google+
      "https://www.googleapis.com/auth/plus.media.upload",
      # View your own Google+ profile and profiles visible to you
      "https://www.googleapis.com/auth/plus.profiles.read",
      # View your Google+ posts, comments, and stream
      "https://www.googleapis.com/auth/plus.stream.read",
      # Manage your Google+ posts, comments, and stream
      "https://www.googleapis.com/auth/plus.stream.write",
      # View your email address
      "https://www.googleapis.com/auth/userinfo.email",
      # View your basic profile info
      "https://www.googleapis.com/auth/userinfo.profile"
    ],
    otp_app: :google_api_plus_domains,
    base_url: "https://www.googleapis.com"
end
