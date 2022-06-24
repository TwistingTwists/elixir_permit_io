# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.ActionProperties do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"title",
    :"description",
    :"path",
    :"attributes"
  ]

  @type t :: %__MODULE__{
    :"title" => String.t | nil,
    :"description" => String.t | nil,
    :"path" => String.t | nil,
    :"attributes" => map() | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.ActionProperties do
  def decode(value, _options) do
    value
  end
end
