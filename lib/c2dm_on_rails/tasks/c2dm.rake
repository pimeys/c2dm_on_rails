namespace :c2dm do
  
  namespace :notifications do
    
    desc "Deliver all unsent C2dm notifications."
    task :deliver => [:environment] do
      C2dm::Notification.send_notifications
    end
    
  end # notifications
end # c2dm
