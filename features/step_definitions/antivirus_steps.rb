require 'aws-sdk-s3'

Given /^I have a randomized file containing the eicar test signature$/ do
  @file = Fixtures.eicar_test_signature + SecureRandom.base64(129)
end

When /^I upload #{MAYBE_VAR} to the documents bucket under the key #{MAYBE_VAR}$/ do |file_contents, destination_key|
  s3 = Aws::S3::Resource.new(region: 'eu-west-1')  # actual region is unimportant
  @s3_obj = s3.bucket(dm_documents_bucket_name).object(destination_key)
  @s3_obj_response = @s3_obj.put(
    acl: "bucket-owner-full-control",
    body: file_contents,
  )
  puts "File etag: #{@s3_obj_response.etag}"
end

Then /^I receive a notification regarding that file within ([0-9]+) minutes?$/ do |minutes_string|
  etag = @s3_obj_response.etag.downcase.gsub(/[^a-z0-9]/, '')
  minutes = minutes_string.to_i

  expected_ref = "eicar-found-#{etag}-#{dm_environment}"
  puts "Notify ref: #{expected_ref}"

  messages = nil
  (0..(minutes * 6)).each {
    sleep(10)
    messages = DMNotify.get_email_raw(expected_ref)
    if messages.collection.length != 0
      break
    end
  }
  expect(messages.collection.length).to eq(1)
  @email = messages.collection[0]
  puts "Notify id: #{@email.id}"
end
