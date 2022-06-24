# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.NewRole do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"description",
    :"attributes",
    :"settings",
    :"parameterId",
    :"environmentId"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"description" => String.t | nil,
    :"attributes" => map() | nil,
    :"settings" => map() | nil,
    :"parameterId" => String.t | nil,
    :"environmentId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.NewRole do
  def decode(value, _options) do
    value
  end
end
