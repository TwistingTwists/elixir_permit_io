# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.UpdateOrganization do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"settings"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"settings" => map() | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.UpdateOrganization do
  def decode(value, _options) do
    value
  end
end

