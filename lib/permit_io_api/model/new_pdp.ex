# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.NewPdp do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"environmentId"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"environmentId" => String.t
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.NewPdp do
  def decode(value, _options) do
    value
  end
end
