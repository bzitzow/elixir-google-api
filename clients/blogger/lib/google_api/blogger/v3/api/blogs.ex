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

defmodule GoogleApi.Blogger.V3.Api.Blogs do
  @moduledoc """
  API calls for all endpoints tagged `Blogs`.
  """

  alias GoogleApi.Blogger.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one blog by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the blog to get.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxPosts (integer()): Maximum number of posts to pull back with the blog.
    - :view (String.t): Access level with which to view the blog. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Blog{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Blog.t()} | {:error, Tesla.Env.t()}
  def blogger_blogs_get(connection, blog_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxPosts => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}", %{
        "blogId" => URI.encode_www_form(blog_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Blog{}])
  end

  @doc """
  Retrieve a Blog by URL.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - url (String.t): The URL of the blog to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :view (String.t): Access level with which to view the blog. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Blog{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_get_by_url(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Blog.t()} | {:error, Tesla.Env.t()}
  def blogger_blogs_get_by_url(connection, url, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/byurl")
      |> Request.add_param(:query, :url, url)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Blog{}])
  end

  @doc """
  Retrieves a list of blogs, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - user_id (String.t): ID of the user whose blogs are to be fetched. Either the word &#39;self&#39; (sans quote marks) or the user&#39;s profile identifier.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :fetchUserInfo (boolean()): Whether the response is a list of blogs with per-user information instead of just blogs.
    - :role ([String.t]): User access types for blogs to include in the results, e.g. AUTHOR will return blogs where the user has author level access. If no roles are specified, defaults to ADMIN and AUTHOR roles.
    - :status ([String.t]): Blog statuses to include in the result (default: Live blogs only). Note that ADMIN access is required to view deleted blogs.
    - :view (String.t): Access level with which to view the blogs. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.BlogList{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_list_by_user(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.BlogList.t()} | {:error, Tesla.Env.t()}
  def blogger_blogs_list_by_user(connection, user_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fetchUserInfo => :query,
      :role => :query,
      :status => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/blogs", %{
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.BlogList{}])
  end
end
