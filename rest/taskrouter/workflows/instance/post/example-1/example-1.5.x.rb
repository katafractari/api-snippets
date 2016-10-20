# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
workflow_sid = 'WWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'


client = Twilio::REST::Client.new account_sid, auth_token

workflow = client.taskrouter.v1.workspaces(workspace_sid).workflows(workflow_sid)
workflow = workflow.update(task_reservation_timeout: '20')
puts workflow.task_reservation_timeout
