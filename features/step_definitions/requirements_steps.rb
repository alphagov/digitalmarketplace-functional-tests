Before do
  @fields = {}
end

Given "I have created $type requirement" do |type|
  page.visit("#{dm_frontend_domain}")

  click_on "Find #{type}"

  expect(page).to have_selector('h1', text: "Find #{type}")

  click_on 'Create requirement'

  answers = fill_form

  @fields.merge! answers

  click_on 'Save and continue'

  expect(page).to have_selector('h1', text: answers['title'])
end

Then(/^'(.*)' should (not |)be ticked$/) do |label, negative|
  expr = "//li[a[text()='#{label}']]/span[@class='tick']"

  count = case negative.empty? when true then 1 else 0 end

  expect(page).to have_selector(:xpath, expr, :count => count)
end

When "I answer the following questions:" do |table|

  table.rows.flatten.each { |question|
    expr = "//li[a[text()='#{question}']]/span[@class='tick']"

    # should be no tick mark beside the question name on the overview page
    expect(page).to have_selector(:xpath, expr, :count => 0)

    # click the question name on the overview page (eg, "Location")
    click_on question

    @fields.merge! fill_form

    click_on 'Save and continue'

    expect(page).to have_selector(:xpath, expr, :count => 1)
  }
end

When "I answer all summary questions with:" do |table|
  with = {}
  expected_summary_table_values = {}

  if table
    table.rows.each do |k, v, s|
      # Parse Cucumber table
      v = JSON.parse(v) if ['{', '['].include? v[0]
      with[k] = v
      # Only add this k: v pair to the expected_summary_table_values if the value exists (taken from the
      # expected_summary_table_value column)
      # {table field: expected summary table value}
      expected_summary_table_values[k] = s if s != ''
    end
  end

  all('tr.summary-item-row').to_a.each_with_index do |row, index|
    within all('tr.summary-item-row')[index] do
      click_on first('a').text
    end

    answer = fill_form :with => with

    @fields.merge! answer

    substitutions = find_substitutions

    puts answer

    click_on 'Save and continue'

    within all('tr.summary-item-row')[index] do
      # Find the value in the summary table.
      # Can be overriden using the expected_summary_table_value column of the Cucumber table
      answer.each do |k, v|
        if v.respond_to? :each
          v.each do |v|
            expect(all('td')[1].text).to include(expected_summary_table_values[k] || substitutions[k][v] || v)
          end
        else
          expect(all('td')[1].text).to include(expected_summary_table_values[k] || substitutions[k][v] || v)
        end
      end
    end
  end
end

When "I answer all summary questions" do
  steps %Q{
     When I answer all summary questions with:
       | field | value |
  }
end
