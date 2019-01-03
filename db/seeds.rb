
User.create!(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Regular User",
)


3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)

end

puts "3 Topic created"


10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
	    body:  "There are many variations of passages of Lorem Ipsum available,
	     but the majority have suffered alteration in some form, by injected 
	     humour, or randomised words which don't look even slightly believable. 
	     If you are going to use a passage of Lorem Ipsum, you need to be sure there 
	     isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum 
	     generators on the Internet tend to repeat predefined chunks as necessary, making 
	     this the first true generator on the Internet. It uses a dictionary of over 200 
	     Latin words, combined with a handful of model sentence structures, to generate 
	     Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always 
	     free from repetition, injected humour, or non-characteristic words etc.",
	    topic_id: Topic.last.id
	)
  end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
 )
end

puts "5 skills created"

8.times do |portfolio_item|
 Portfolio.create!(
	title: "Portfolio title: #{portfolio_item}",
   	subtitle: "Ruby on Rails",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text.
     It has roots in a piece of classical Latin literature from 45 BC, making 
     it over 2000 years old. Richard McClintock, a Latin professor at 
     Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
     consectetur, from a Lorem Ipsum passage, and going through the cites of the word
     in classical literature, discovered the undoubtable source. Lorem Ipsum comes
     from sections 1.10.32 and 1.10.33  (The Extremes of Good and Evil) by Cicero, 
     written in 45 BC. This book is a treatise on the theory of ethics, very popular 
     during the Renaissance. The first line of Lorem Ipsum,, comes from a line in",
 	main_image: "https://placehold.it/600x400",
  	thumb_image: "https://placehold.it/350x200"
    )
end


1.times do |portfolio_item|
 Portfolio.create!(
	title: "Portfolio title: #{portfolio_item}",
   	subtitle: "Angular",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text.
     It has roots in a piece of classical Latin literature from 45 BC, making 
     it over 2000 years old. Richard McClintock, a Latin professor at 
     Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, 
     consectetur, from a Lorem Ipsum passage, and going through the cites of the word
     in classical literature, discovered the undoubtable source. Lorem Ipsum comes
     from sections 1.10.32 and 1.10.33  (The Extremes of Good and Evil) by Cicero, 
     written in 45 BC. This book is a treatise on the theory of ethics, very popular 
     during the Renaissance. The first line of Lorem Ipsum,, comes from a line in",
 	main_image: "https://placehold.it/600x400",
  	thumb_image: "https://placehold.it/350x200"
    )
end
puts "9 portfolio items created"

3.times do |technology|
    Portfolio.last.technologies.create!(
            name: "Technology #{technology}",
        
        )
end

puts "3 technologies created"










