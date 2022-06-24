# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PermitIoAPI.Model.User do
  @moduledoc """
  these fields should not be editable once the object is created in db
  """

  @derive [Poison.Encoder]
  defstruct [
    :"customId",
    :"email",
    :"firstName",
    :"lastName",
    :"attributes",
    :"settings",
    :"id",
    :"createdAt",
    :"updatedAt",
    :"organizationId",
    :"tenantIds",
    :"environmentId"
  ]

  @type t :: %__MODULE__{
    :"customId" => String.t | nil,
    :"email" => String.t | nil,
    :"firstName" => String.t | nil,
    :"lastName" => String.t | nil,
    :"attributes" => map() | nil,
    :"settings" => map() | nil,
    :"id" => String.t,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t,
    :"organizationId" => String.t,
    :"tenantIds" => [String.t],
    :"environmentId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PermitIoAPI.Model.User do
  def decode(value, _options) do
    value
  end
end
