json.extract! project, :id, :name, :creator, :category_id, :description, :finale_date, :rating, :goal, :created_at, :updated_at
json.url project_url(project, format: :json)
