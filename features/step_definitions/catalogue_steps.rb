Then (/^I see a service in the search results$/) do
  page.should have_selector(:css, "div.search-result")
end

Then (/^I see that service in the search results$/) do
  # we do a broad match using xpath first
  page.all(:xpath, "//*[@class='search-result'][.//h2//a[contains(@href, '#{@service['id']}')]]").find_all { |sr_element|
    # now refine with a much more precise test
    sr_element.all(:css, "h2 a").any? { |a_element|
      (
        a_element[:href] =~ Regexp.new('^(.*\D)?'+"#{@service['id']}"+'(\D.*)?$')
      ) and (
        a_element.text == normalize_whitespace(@service['serviceName'])
      )
    } and sr_element.all(:css, "p.search-result-supplier").any? { |p_element|
      p_element.text == normalize_whitespace(@service['supplierName'])
    } and sr_element.all(:css, "li.search-result-metadata-item").any? { |li_element|
      li_element.text == normalize_whitespace(@service['lotName'])
    } and sr_element.all(:css, "li.search-result-metadata-item").any? { |li_element|
      li_element.text == normalize_whitespace(@service['frameworkName'])
    }
  }.length.should be(1)
end

When(/^I click a random result in the list of service results returned$/) do
  search_results = all(:xpath, "//*[@class='search-result']")
  selected_result = search_results[rand(search_results.length)]

  @result = @result || Hash.new

  a_elem = selected_result.first(:xpath, ".//h2[@class='search-result-title']/a")
  @result['title'] = a_elem.text
  puts "Result name: #{@result['title']}"

  @result['supplier_name'] = selected_result.first(:xpath, ".//*[@class='search-result-supplier']").text
  puts "Result supplier_name: #{@result['supplier_name']}"

  a_elem.click
end
