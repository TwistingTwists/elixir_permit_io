# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.ValidationError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"loc",
    :"msg",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"loc" => [String.t],
    :"msg" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.ValidationError do
  def decode(value, _options) do
    value
  end
end

