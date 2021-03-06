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

defmodule GoogleApi.Chat.V1.Api.Spaces do
  @moduledoc """
  API calls for all endpoints tagged `Spaces`.
  """

  alias GoogleApi.Chat.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists spaces the caller is a member of.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Requested page size. The value is capped at 1000. Server may return fewer results than requested. If unspecified, server will default to 100.
    - :pageToken (String.t): A token identifying a page of results the server should return.

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.ListSpacesResponse{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.ListSpacesResponse.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/spaces")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.ListSpacesResponse{}])
  end

  @doc """
  Returns a membership.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - name (String.t): Required. Resource name of the membership to be retrieved, in the form \&quot;spaces/*/members/*\&quot;.  Example: spaces/AAAAMpdlehY/members/105115627578887013105
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.Membership{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_members_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Membership.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_members_get(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Membership{}])
  end

  @doc """
  Lists human memberships in a space.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - parent (String.t): Required. The resource name of the space for which membership list is to be fetched, in the form \&quot;spaces/*\&quot;.  Example: spaces/AAAAMpdlehY
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Requested page size. The value is capped at 1000. Server may return fewer results than requested. If unspecified, server will default to 100.
    - :pageToken (String.t): A token identifying a page of results the server should return.

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.ListMembershipsResponse{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_members_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.ListMembershipsResponse.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_members_list(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/members", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.ListMembershipsResponse{}])
  end

  @doc """
  Creates a message.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - parent (String.t): Required. Space resource name, in the form \&quot;spaces/*\&quot;. Example: spaces/AAAAMpdlehY
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :threadKey (String.t): Opaque thread identifier string that can be specified to group messages into a single thread. If this is the first message with a given thread identifier, a new thread is created. Subsequent messages with the same thread identifier will be posted into the same thread. This relieves bots and webhooks from having to store the Hangouts Chat thread ID of a thread (created earlier by them) to post further updates to it.  Has no effect if thread field, corresponding to an existing thread, is set in message.
    - :body (Message): 

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.Message{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_messages_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Message.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_messages_create(connection, parent, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :threadKey => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/messages", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Message{}])
  end

  @doc """
  Deletes a message.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - name (String.t): Required. Resource name of the message to be deleted, in the form \&quot;spaces/*/messages/*\&quot;  Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_messages_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_messages_delete(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Empty{}])
  end

  @doc """
  Updates a message.

  ## Parameters

  - connection (GoogleApi.Chat.V1.Connection): Connection to server
  - name (String.t): Resource name, in the form \&quot;spaces/*/messages/*\&quot;.  Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): Required. The field paths to be updated.  Currently supported field paths: \&quot;text\&quot;, \&quot;cards\&quot;.
    - :body (Message): 

  ## Returns

  {:ok, %GoogleApi.Chat.V1.Model.Message{}} on success
  {:error, info} on failure
  """
  @spec chat_spaces_messages_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Chat.V1.Model.Message.t()} | {:error, Tesla.Env.t()}
  def chat_spaces_messages_update(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Chat.V1.Model.Message{}])
  end
end
