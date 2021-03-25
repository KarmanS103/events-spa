defmodule EventsSpa.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :date, :string
    field :description, :string
    field :inviting, :string
    field :name, :string
    # field :user_id, :id
    belongs_to :user, EventsSpa.Users.User 

    has_many :comments, EventsSpa.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :date, :description, :inviting, :user_id])
    |> validate_required([:name, :date, :description, :inviting, :user_id])
  end
end
