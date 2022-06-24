# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.Action do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"title",
    :"description",
    :"path",
    :"attributes",
    :"name",
    :"id",
    :"permissionName",
    :"isBuiltIn"
  ]

  @type t :: %__MODULE__{
    :"title" => String.t | nil,
    :"description" => String.t | nil,
    :"path" => String.t | nil,
    :"attributes" => map() | nil,
    :"name" => String.t,
    :"id" => String.t,
    :"permissionName" => String.t | nil,
    :"isBuiltIn" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.Action do
  def decode(value, _options) do
    value
  end
end

