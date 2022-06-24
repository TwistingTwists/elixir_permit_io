# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Api.PDPDecisions do
  @moduledoc """
  API calls for all endpoints tagged `PDPDecisions`.
  """

  alias PermitIoAPI.Connection
  import PermitIoAPI.RequestBuilder


  @doc """
  List PDP Decisions
  Get a list of all PDP decisions filtered by users, timestamp, decision, etc.

  ## Parameters

  - connection (PermitIoAPI.Connection): Connection to server
  - pdp_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :users ([String.t]): List of user IDs to filter by
    - :approved (boolean()): Filter by approved decisions
    - :resources ([String.t]): Filter by resources
    - :timestamp_from (integer()): Filter by timestamp from
    - :timestamp_to (integer()): Filter by timestamp to
    - :skip (integer()): Skip first n results
    - :limit (integer()): Limit to n results
    - :x_organization_id (String.t): The id of the active organization you want to query on
  ## Returns

  {:ok, PermitIoAPI.Model.DecisionLogResponseList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_decision_logs(Tesla.Env.client, String.t, keyword()) :: {:ok, PermitIoAPI.Model.DecisionLogResponseList.t} | {:ok, PermitIoAPI.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_decision_logs(connection, pdp_id, opts \\ []) do
    optional_params = %{
      :"users" => :query,
      :"approved" => :query,
      :"resources" => :query,
      :"timestamp_from" => :query,
      :"timestamp_to" => :query,
      :"skip" => :query,
      :"limit" => :query,
      :"x-organization-id" => :headers
    }
    %{}
    |> method(:get)
    |> url("/v1/pdps/#{pdp_id}/decision_logs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PermitIoAPI.Model.DecisionLogResponseList{}},
      { 422, %PermitIoAPI.Model.HttpValidationError{}}
    ])
  end
end