json.extract! project, :id, :title, :description, :percent_complete, :created_at, :updated_at
json.url project_url(project, format: :json)
