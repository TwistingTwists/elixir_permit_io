# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.ResourceDef do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"path"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t,
    :"path" => String.t
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.ResourceDef do
  def decode(value, _options) do
    value
  end
end

