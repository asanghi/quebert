module Quebert
  module Backend
    # Run the job syncronously. This is typically used in a testing environment
    # or could be used as a fallback if other backends fail to initialize
    class Sync
      def put(job, *args)
        Controller::Base.new(Job.from_json(job.to_json)).perform
      end
    end
  end
end