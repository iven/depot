# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LineItem.delete_all
Cart.delete_all
Product.delete_all
Order.delete_all
User.delete_all

User.create(name: 'admin',
            password: 'admin',
            password_confirmation: 'admin'
           )

Product.create(title: 'Web Design for Developers',
               description: 
               %{<p>
                   <em>Web Design for Developers</em> will show you how to make your
                   web-based application look professionally designed. We'll help you
                   learn how to pick the right colors and fonts, avoid costly interface
                   and accessibility mistakes -- your application will really come alive.
                   We'll also walk you through some common Photoshop and CSS techniques
                   and work through a web site redesign, taking a new design from concept
                   all the way to implementation.
                 </p>},
               image_url:   '/assets/wd4d.jpg',    
               price: 42.95,
               locale: :en
              )
# . . .
Product.create(title: 'Programming Ruby 1.9',
               description:
               %{<p>
                   Ruby is the fastest growing and most exciting dynamic language
                   out there. If you need to get working programs delivered fast,
                   you should add Ruby to your toolbox.
                 </p>},
               image_url: '/assets/ruby.jpg',
               price: 49.50,
               locale: :zh_CN
              )
# . . .

Product.create(title: 'Rails Test Prescriptions',
               description: 
               %{<p>
                   <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
                   Rails applications, covering Test-Driven Development from both a
                   theoretical perspective (why to test) and from a practical perspective
                   (how to test effectively). It covers the core Rails testing tools and
                   procedures for Rails 2 and Rails 3, and introduces popular add-ons,
                   including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
                 </p>},
               image_url: '/assets/rtp.jpg',
               price: 43.75,
               locale: :zh_CN
              )

