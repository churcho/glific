defmodule Glific.Repo.Migrations.AddIndexes do
  use Ecto.Migration

  def change do
    # We might have manually created this on our production servers
    # hence using if not exists
    create_if_not_exists index(:contacts, :last_communication_at)

    create_if_not_exists index(:flow_contexts, :wakeup_at)
    create_if_not_exists index(:flow_contexts, :completed_at)

    create_if_not_exists index(:flow_results, :organization_id)
    create_if_not_exists index(:flow_results, :inserted_at)
    create_if_not_exists index(:flow_results, :updated_at)

    create_if_not_exists index(:flow_revisions, :flow_id)
    create_if_not_exists index(:flow_revisions, :status)
    create_if_not_exists index(:flow_revisions, :organization_id)

    create_if_not_exists index(:messages, :inserted_at)
    create_if_not_exists index(:messages, :updated_at)

    create_if_not_exists index(:search_messages, :contact_id)

    sql = [
      "CREATE INDEX IF NOT EXISTS search_messages_name_idx_gin ON search_messages USING gin (name gin_trgm_ops)",
      "CREATE INDEX IF NOT EXISTS search_messages_phone_idx_gin ON search_messages USING gin (phone gin_trgm_ops)",
      "CREATE INDEX IF NOT EXISTS messages_body_idx_gin ON messages USING gin (body gin_trgm_ops)"
    ]

    Enum.each(sql, &execute/1)
  end
end
