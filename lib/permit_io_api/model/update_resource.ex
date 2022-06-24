# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.UpdateResource do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"description",
    :"attributes",
    :"name",
    :"path"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t | nil,
    :"description" => String.t | nil,
    :"attributes" => map() | nil,
    :"name" => String.t | nil,
    :"path" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.UpdateResource do
  def decode(value, _options) do
    value
  end
end
