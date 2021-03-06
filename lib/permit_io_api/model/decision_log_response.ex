# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.DecisionLogResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"runId",
    :"decisionId",
    :"timestamp",
    :"path",
    :"input",
    :"result",
    :"id",
    :"pdpId"
  ]

  @type t :: %__MODULE__{
    :"runId" => String.t,
    :"decisionId" => String.t,
    :"timestamp" => DateTime.t,
    :"path" => String.t | nil,
    :"input" => map() | nil,
    :"result" => PermitIoAPI.Model.DecisionLogResultResponse.t | nil,
    :"id" => String.t,
    :"pdpId" => String.t
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.DecisionLogResponse do
  import PermitIoAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"result", :struct, PermitIoAPI.Model.DecisionLogResultResponse, options)
  end
end

