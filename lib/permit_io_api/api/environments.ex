# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Api.Environments do
  @moduledoc """
  API calls for all endpoints tagged `Environments`.
  """

  alias PermitIoAPI.Connection
  import PermitIoAPI.RequestBuilder


  @doc """
  Create Environment
  Create a new client environment under this organization.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - project_id (String.t): 
  - new_environment (NewEnvironment): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.Environment.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec create_environment(Tesla.Env.client, String.t, PermitIoAPI.Model.NewEnvironment.t, keyword()) :: {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:ok, PermitIoAPI.Model.Environment.t} | {:error, Tesla.Env.t}
  def create_environment(connection, project_id, new_environment, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:post)
    |> url("/v1/projects/#{project_id}/environments")
    |> add_param(:body, :body, new_environment)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %PermitIoAPI.Model.Environment{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Environment
  Delete an existing Environment.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - environment_id (String.t): 
  - project_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_environment(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_environment(connection, environment_id, project_id, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/v1/projects/#{project_id}/environments/#{environment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 404, false},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Environment
  Retrieve environment details.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - environment_id (String.t): 
  - project_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.Environment.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_environment(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:ok, PermitIoAPI.Model.Environment.t} | {:error, Tesla.Env.t}
  def get_environment(connection, environment_id, project_id, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:get)
    |> url("/v1/projects/#{project_id}/environments/#{environment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.Environment{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  List Environments
  Get a list of environments that are configured under this organization.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - project_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :skip (integer()): Skip first n results
    - :limit (integer()): Limit to n results
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.EnvironmentList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec list_environments(Tesla.Env.client, String.t, keyword()) :: {:ok, PermitIoAPI.Model.EnvironmentList.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def list_environments(connection, project_id, opts \\ []) do
    optional_params = %{
      :"skip" => :query,
      :"limit" => :query,
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:get)
    |> url("/v1/projects/#{project_id}/environments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.EnvironmentList{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Update Environment
  Update the environment settings.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - environment_id (String.t): 
  - project_id (String.t): 
  - update_environment (UpdateEnvironment): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.Environment.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_environment(Tesla.Env.client, String.t, String.t, PermitIoAPI.Model.UpdateEnvironment.t, keyword()) :: {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:ok, PermitIoAPI.Model.Environment.t} | {:error, Tesla.Env.t}
  def update_environment(connection, environment_id, project_id, update_environment, opts \\ []) do
    optional_params = %{
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:patch)
    |> url("/v1/projects/#{project_id}/environments/#{environment_id}")
    |> add_param(:body, :body, update_environment)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.Environment{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end
end