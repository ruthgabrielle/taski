class Task < ApplicationRecord
  belongs_to :project

  after_save :update_percent_complete if :mark_completed?

  scope :completed, -> { where(completed: true)}

  mount_uploader :task_file, TaskFileUploader

  def mark_completed?
    self.completed == true
  end

  def update_percent_complete
    puts "*" * 500
    puts "Beginning of callback"
    project = Project.find(self.project_id)
    count_of_completed_tasks = project.tasks.completed.count
    count_of_total_tasks = project.tasks.count
    project.update!(percent_complete: Counter.calculate_percent_complete(
      count_of_completed_tasks, count_of_total_tasks))

    puts "&" * 500
    puts "End of callback"
  end

end
