class Counter 
    def self.calculate_percent_complete(complete_tasks, total_tasks)
        complete_tasks.to_f / total_tasks.to_f * 100
    end
end