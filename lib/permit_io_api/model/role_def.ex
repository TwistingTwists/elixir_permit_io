# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.RoleDef do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"scope"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"scope" => map() | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.RoleDef do
  def decode(value, _options) do
    value
  end
end
