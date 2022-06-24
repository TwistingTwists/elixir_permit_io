# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.ChangeRoleAssignment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"role",
    :"user",
    :"scope",
    :"environmentId"
  ]

  @type t :: %__MODULE__{
    :"role" => String.t,
    :"user" => String.t,
    :"scope" => String.t,
    :"environmentId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.ChangeRoleAssignment do
  def decode(value, _options) do
    value
  end
end

