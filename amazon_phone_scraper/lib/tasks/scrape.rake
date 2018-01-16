namespace :scrape do
  desc "Scrape all cellphone from the first page of amazon.com"
  task amazon_cellphones: :environment do
    Phone.destroy_all
    agent = Mechanize.new
    agent.user_agent_alias = 'Mac Safari'
    page = agent.get('https://www.amazon.com')
    search_form = page.forms.first
    search_form['field-keywords'] = 'Game of Thrones'
    page = search_form.submit
    cellphones = page.css('.s-item-container')
    phone_count = 0
    cellphones.each do |phone|
      begin
        image_url = phone.at_css('.s-access-image').attributes['src'].value
        title = phone.at_css('.s-access-title').text
        whole_price = phone.at_css('.sx-price-whole').text
        fractional_price = phone.at_css('.sx-price-fractional').text
        price = "#{whole_price}.#{fractional_price}"
        stars = phone.at_css('.a-icon-star').text
        Phone.create(title: title, image_url: image_url, price: price, stars: stars)
        phone_count += 1
      rescue => e
        puts 'Cellphone failed to scrape. Wrong data. Continuing...'
        next
      end
    end
    puts "#{phone_count} phones scraped from Amazon!"
  end

end