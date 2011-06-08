require 'pp'
require 'yajl/json_gem'
require 'stringio'

module Company
  module Resources
    module Helpers
      STATUSES = {
        200 => '200 OK',
        201 => '201 Created',
        204 => '204 No Content',
        301 => '301 Moved Permanently',
        304 => '304 Not Modified',
        400 => '400 Bad Request',
        401 => '401 Unauthorized',
        403 => '403 Forbidden',
        404 => '404 Not Found',
        409 => '409 Conflict',
        422 => '422 Unprocessable Entity',
        500 => '500 Server Error'
      }

      def headers(status, head = {})
        css_class = (status == 204 || status == 404) ? 'headers no-response' : 'headers'
        lines = ["Status: #{STATUSES[status]}"]
        head.each do |key, value|
          case key
            when :pagination
            else lines << "#{key}: #{value}"
          end
        end

        %(<pre class="#{css_class}"><code>#{lines * "\n"}</code></pre>\n)
      end

      def json(key)
        hash = case key
          when Hash
            h = {}
            key.each { |k, v| h[k.to_s] = v }
            h
          when Array
            key
          else Resources.const_get(key.to_s.upcase)
        end

        hash = yield hash if block_given?

        %(<pre class="highlight"><code class="language-javascript">) +
          JSON.pretty_generate(hash) + "</code></pre>"
      end
    end

    DONOR = {
      "name" => "John Doe",
      "location" => "Chicago, Illinois",
      "created_at" => "2009-12-08T16:13:33Z"
    }

    FEATURED_PROJECT = {
      "id" => 26,
      "title" => "Udaan Girls Education Program in India",
      "caption" => "Provide marginalized girls with the opportunity to finish primary education",
      "picture_url" => "[URL]",
      "picture_thumbnail_url" => "[URL]",
      "url" => "http://citizeneffect.org/projects/udaan-3"
    }

    MAILING_LIST_USER = {
      "email" => "jane@example.com"
    }

    MEDIA = {
      "id" => 374,
      "url" => "http://www.youtube.com/watch?v=nnv9wnUkF60",
      "title" => "Dana, Jill, & Robin's Devki Village Well Repair Project",
      "description" => "Dana, Jill & Robin raised $2,350 to repair the well in Devki village",
      "type" => "video"
    }

    PARTNER = {
      "id" => 34,
      "name" => "Acme",
      "logo_url" => "[URL]"
    }

    PROJECT = {
      "id" => 466,
      "cp_id" => 73,
      "name" => "Udaan Girls Education Program in India",
      "primary_benefits" => "The annual cost per year for a girl to complete the Udaan program is approximately $534.",
      "secondary_benefits" => "The Udaan Program has not only made a difference for the girls who enroll, it also has helped bring about a positive change in families' opinions about girls' education.",
      "partner_id" => 48,
      "summary" => "For every 100 girls in rural India, only 18 will reach 8th grade, and only 1 will complete high school. To address this problem, CARE and its Indian field partners have established the Udaan Program, a residential learning program specifically designed to help never-enrolled or out-of-school girls ages 10-14 complete primary level schooling in 11 months.",
      "community_summary" => "The girls are taken from a mixed community spread over several villages in Uttar Pradesh and Orissa. The criteria for selection is the remoteness of the region and lack of basic facilities, including schools.",
      "start_date" => "Thu, 01 Dec 2011",
      "lives_impacted" => 100,
      "donated_dollars" => 1000,
      "donor_count" => 20,
      "status" => "Awaiting Cp",
      "community_name" => "Uttar Pradesh and Orissa"
    }

    USER = {
      "name" => "Jane Doe",
      "location" => "Seattle, Washington",
      "about_me" => "I am devoted to helping the under-privileged",
      "email" => "jane@example.com",
      "twitter_url" => "http://twitter.com/janedoe",
      "linkedin_url" => "http://linkedin.com/janedoe",
      "facebook_url" => "http://facebook.com/janedoe",
      "myspace_url" => "http://myspace.com/janedoe",
      "youtube_url" => "http://youtube.com/janedoe"
    }

  end
end

include Company::Resources::Helpers
