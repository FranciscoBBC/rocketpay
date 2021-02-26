defmodule RocketpayWeb.UserView do
  alias Rocketpay.{User, Account}

  def render("create.json", %{
        user: %User{
          id: id,
          name: name,
          nickname: nickname,
          account: %Account{id: account_id, balance: balance}
        }
      }) do
    %{
      message: "user created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
