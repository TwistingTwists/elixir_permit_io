# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Api.Organizations do
  @moduledoc """
  API calls for all endpoints tagged `Organizations`.
  """

  alias PermitIoAPI.Connection
  import PermitIoAPI.RequestBuilder


  @doc """
  Create Organization
  Create a new organization (will be owned by creating user).

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - new_organization (NewOrganization): 
  - opts (KeywordList): [optional] Optional parameters
    - :populate (boolean()): Populate organization with default tenant and project
  ## Returns

  {:ok, PermitIoAPI.Model.Organization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_organization(Tesla.Env.client, PermitIoAPI.Model.NewOrganization.t, keyword()) :: {:ok, PermitIoAPI.Model.Organization.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def create_organization(connection, new_organization, opts \\ []) do
    optional_params = %{
      :"populate" => :query
    }
    %{}
    |> method(:post)
    |> url("/v1/organizations")
    |> add_param(:body, :body, new_organization)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %PermitIoAPI.Model.Organization{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Organization
  Delete an existing Organization.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - organization_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_organization(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_organization(connection, organization_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v1/organizations/#{organization_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 406, false},
      { 404, false},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Organization
  Retrieve Organization details.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - organization_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PermitIoAPI.Model.Organization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_organization(Tesla.Env.client, String.t, keyword()) :: {:ok, PermitIoAPI.Model.Organization.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_organization(connection, organization_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v1/organizations/#{organization_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.Organization{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  List Organizations

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :skip (integer()): Skip first n results
    - :limit (integer()): Limit to n results
  ## Returns

  {:ok, PermitIoAPI.Model.OrganizationList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec list_organizations(Tesla.Env.client, keyword()) :: {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:ok, PermitIoAPI.Model.OrganizationList.t} | {:error, Tesla.Env.t}
  def list_organizations(connection, opts \\ []) do
    optional_params = %{
      :"skip" => :query,
      :"limit" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/organizations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.OrganizationList{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Update Organization
  Update the Organization data.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - organization_id (String.t): 
  - update_organization (UpdateOrganization): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PermitIoAPI.Model.Organization.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_organization(Tesla.Env.client, String.t, PermitIoAPI.Model.UpdateOrganization.t, keyword()) :: {:ok, PermitIoAPI.Model.Organization.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def update_organization(connection, organization_id, update_organization, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/v1/organizations/#{organization_id}")
    |> add_param(:body, :body, update_organization)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.Organization{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end
end