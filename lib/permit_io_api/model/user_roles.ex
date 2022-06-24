# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.UserRoles do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"email",
    :"metadata",
    :"roles"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"email" => String.t | nil,
    :"metadata" => map() | nil,
    :"roles" => [PermitIoAPI.Model.RoleDef.t]
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.UserRoles do
  import PermitIoAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"roles", :list, PermitIoAPI.Model.RoleDef, options)
  end
end
