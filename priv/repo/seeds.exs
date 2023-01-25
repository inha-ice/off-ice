now =
  NaiveDateTime.utc_now()
  |> NaiveDateTime.truncate(:second)

item_categories = ["공학용 계산기", "우산"]

Office.Repo.insert_all(
  Office.Model.ItemCategory,
  Enum.map(
    item_categories,
    &%{
      name: &1,
      inserted_at: {:placeholder, :now},
      updated_at: {:placeholder, :now}
    }
  ),
  on_conflict: :nothing,
  placeholders: %{now: now}
)

users = [%{id: 12345678, name: "Test"}]

Office.Repo.insert_all(
  Office.Model.User,
  Enum.map(
    users,
    &%{
      id: &1.id,
      name: &1.name,
      inserted_at: {:placeholder, :now},
      updated_at: {:placeholder, :now}
    }
  ),
  on_conflict: :nothing,
  placeholders: %{now: now}
)
