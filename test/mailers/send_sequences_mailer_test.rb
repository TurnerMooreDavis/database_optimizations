require 'test_helper'

class SendSequencesMailerTest < ActionMailer::TestCase
  test "data" do
    mail = SendSequencesMailer.data
    assert_equal "Data", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
