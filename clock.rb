
require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('Hello')
  end
  every(10.seconds, 'send')
end
