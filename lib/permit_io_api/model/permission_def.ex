# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.PermissionDef do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"action",
    :"resource",
    :"scope"
  ]

  @type t :: %__MODULE__{
    :"action" => String.t,
    :"resource" => PermitIoAPI.Model.ResourceDef.t,
    :"scope" => map() | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.PermissionDef do
  import PermitIoAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"resource", :struct, PermitIoAPI.Model.ResourceDef, options)
  end
end

