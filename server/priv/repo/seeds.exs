# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EventsSpa.Repo.insert!(%EventsSpa.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias EventsSpa.Repo
alias EventsSpa.Users.User

henry = Repo.insert!(%User{name: "henry", email: "henry@gmail.com",  password_hash: ""})
tobi = Repo.insert!(%User{name: "tobi", email: "tobi@gmail.com", password_hash: ""})