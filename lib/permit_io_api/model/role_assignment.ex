# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.RoleAssignment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"role",
    :"user",
    :"scope"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"role" => PermitIoAPI.Model.Role.t,
    :"user" => String.t,
    :"scope" => String.t
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.RoleAssignment do
  import PermitIoAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"role", :struct, PermitIoAPI.Model.Role, options)
  end
end

