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

defmodule GoogleApi.ServiceConsumerManagement.V1.Api.Services do
  @moduledoc """
  API calls for all endpoints tagged `Services`.
  """

  alias GoogleApi.ServiceConsumerManagement.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Search tenancy units for a service.

  ## Parameters

  - connection (GoogleApi.ServiceConsumerManagement.V1.Connection): Connection to server
  - parent (String.t): Service for which search is performed. services/{service} {service} the name of a service, for example &#39;service.googleapis.com&#39;.
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
    - :pageSize (integer()): The maximum number of results returned by this request. Currently, the default maximum is set to 1000. If page_size is not provided or the size provided is a number larger than 1000, it will be automatically set to 1000.  Optional.
    - :pageToken (String.t): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response.  Optional.
    - :query (String.t): Set a query &#x60;{expression}&#x60; for querying tenancy units. Your &#x60;{expression}&#x60; must be in the format: &#x60;field_name&#x3D;literal_string&#x60;. The &#x60;field_name&#x60; is the name of the field you want to compare. Supported fields are &#x60;tenant_resources.tag&#x60; and &#x60;tenant_resources.resource&#x60;.  For example, to search tenancy units that contain at least one tenant resource with given tag &#39;xyz&#39;, use query &#x60;tenant_resources.tag&#x3D;xyz&#x60;. To search tenancy units that contain at least one tenant resource with given resource name &#39;projects/123456&#39;, use query &#x60;tenant_resources.resource&#x3D;projects/123456&#x60;.  Multiple expressions can be joined with &#x60;AND&#x60;s. Tenancy units must match all expressions to be included in the result set. For example, &#x60;tenant_resources.tag&#x3D;xyz AND tenant_resources.resource&#x3D;projects/123456&#x60;  Optional.

  ## Returns

  {:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse{}} on success
  {:error, info} on failure
  """
  @spec serviceconsumermanagement_services_search(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_search(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :pageToken => :query,
      :query => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}:search", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.SearchTenancyUnitsResponse{}]
    )
  end

  @doc """
  Add a new tenant project to the tenancy unit. There can be at most 512 tenant projects in a tenancy unit. If there are previously failed &#x60;AddTenantProject&#x60; calls, you might need to call &#x60;RemoveTenantProject&#x60; first to clean them before you can make another &#x60;AddTenantProject&#x60; with the same tag. Operation&lt;response: Empty&gt;.

  ## Parameters

  - connection (GoogleApi.ServiceConsumerManagement.V1.Connection): Connection to server
  - parent (String.t): Name of the tenancy unit.
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
    - :body (AddTenantProjectRequest): 

  ## Returns

  {:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_add_project(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_add_project(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}:addProject", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end

  @doc """
  Creates a tenancy unit with no tenant resources.

  ## Parameters

  - connection (GoogleApi.ServiceConsumerManagement.V1.Connection): Connection to server
  - parent (String.t): services/{service}/{collection id}/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example &#39;projects&#39;, or &#39;organizations&#39;. {resource id} is the consumer numeric id, such as project number: &#39;123456&#39;. {service} the name of a service, for example &#39;service.googleapis.com&#39;. Enabled service binding using the new tenancy unit.
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
    - :body (CreateTenancyUnitRequest): 

  ## Returns

  {:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit{}} on success
  {:error, info} on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_create(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/tenancyUnits", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit{}]
    )
  end

  @doc """
  Find the tenancy unit for a service and consumer. This method should not be used in producers&#39; runtime path, for example finding the tenant project number when creating VMs. Producers should persist the tenant project information after the project is created.

  ## Parameters

  - connection (GoogleApi.ServiceConsumerManagement.V1.Connection): Connection to server
  - parent (String.t): Service and consumer. Required. services/{service}/{collection id}/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example &#39;projects&#39;, or &#39;organizations&#39;. {resource id} is the consumer numeric id, such as project number: &#39;123456&#39;. {service} the name of a service, for example &#39;service.googleapis.com&#39;.
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
    - :filter (String.t): Filter expression over tenancy resources field. Optional.
    - :pageSize (integer()): The maximum number of results returned by this request.
    - :pageToken (String.t): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response.

  ## Returns

  {:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse{}} on success
  {:error, info} on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/tenancyUnits", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.ListTenancyUnitsResponse{}]
    )
  end

  @doc """
  Removes specified project resource identified by tenant resource tag. It will remove project lien with &#39;TenantManager&#39; origin if that was added. It will then attempt to delete the project. If that operation fails, this method fails. Operation&lt;response: Empty&gt;.

  ## Parameters

  - connection (GoogleApi.ServiceConsumerManagement.V1.Connection): Connection to server
  - name (String.t): Name of the tenancy unit. Such as &#39;services/service.googleapis.com/projects/12345/tenancyUnits/abcd&#39;.
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
    - :body (RemoveTenantProjectRequest): 

  ## Returns

  {:ok, %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec serviceconsumermanagement_services_tenancy_units_remove_project(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ServiceConsumerManagement.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def serviceconsumermanagement_services_tenancy_units_remove_project(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:removeProject", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ServiceConsumerManagement.V1.Model.Operation{}]
    )
  end
end
