require 'rails_helper'

describe 'Payload' do
	context 'When sent' do
		it 'Hits the correct controller' do
			payload_body = '{
											  "id": 1,
											  "url": "https://api.github.com/repos/octocat/Hello-World/hooks/1",
											  "test_url": "https://api.github.com/repos/octocat/Hello-World/hooks/1/test",
											  "ping_url": "https://api.github.com/repos/octocat/Hello-World/hooks/1/pings",
											  "name": "web",
											  "events": [
											    "push",
											    "pull_request"
											  ],
											  "active": true,
											  "config": {
											    "url": "http://example.com/webhook",
											    "content_type": "json"
											  },
											  "updated_at": "2011-09-06T20:39:23Z",
											  "created_at": "2011-09-06T17:26:27Z"
											}'

			headers = { 
									'Host': 'localhost:4567',
									'X-Github-Delivery': '72d3162e-cc78-11e3-81ab-4c9367dc0958',
									'User-Agent': 'GitHub-Hookshot/044aadd',
									'Content-Type': 'application/json',
									'Content-Length': '6615',
									'X-GitHub-Event': 'issues',
								}



			conn = Faraday.new(url: 'http://localhost:3000/api/v1/commits')

			conn.post do |req|
				req.headers = headers
			  req.body = payload_body
			end

		end
	end
end
