# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.PermissionIdentifier do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"actionId",
    :"scope"
  ]

  @type t :: %__MODULE__{
    :"actionId" => String.t,
    :"scope" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.PermissionIdentifier do
  def decode(value, _options) do
    value
  end
end

