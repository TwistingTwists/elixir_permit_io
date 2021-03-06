# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Api.Permissions do
  @moduledoc """
  API calls for all endpoints tagged `Permissions`.
  """

  alias PermitIoAPI.Connection
  import PermitIoAPI.RequestBuilder


  @doc """
  Assign Permissions To Role
  Assign permissions to a given role.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - role_id (String.t): 
  - permission_selection (PermissionSelection): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec assign_permissions_to_role(Tesla.Env.client, String.t, PermitIoAPI.Model.PermissionSelection.t, keyword()) :: {:ok, nil} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def assign_permissions_to_role(connection, role_id, permission_selection, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:post)
    |> url("/v1/roles/#{role_id}/permissions")
    |> add_param(:body, :body, permission_selection)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  List Role Permissions
  Get a list of permissions assigned to a given role.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - role_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :skip (integer()): Skip first n results
    - :limit (integer()): Limit to n results
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.PermissionList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec list_role_permissions(Tesla.Env.client, String.t, keyword()) :: {:ok, PermitIoAPI.Model.PermissionList.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def list_role_permissions(connection, role_id, opts \\ []) do
    optional_params = %{
      :"skip" => :query,
      :"limit" => :query,
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:get)
    |> url("/v1/roles/#{role_id}/permissions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.PermissionList{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Remove Permissions From Role
  Remove permissions from a given role.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - role_id (String.t): 
  - permission_selection (PermissionSelection): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec remove_permissions_from_role(Tesla.Env.client, String.t, PermitIoAPI.Model.PermissionSelection.t, keyword()) :: {:ok, nil} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def remove_permissions_from_role(connection, role_id, permission_selection, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/v1/roles/#{role_id}/permissions")
    |> add_param(:body, :body, permission_selection)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end
end
