Book.destroy_all
Genre.destroy_all

fiction=Genre.create!(name:'Fiction')
non_fiction=Genre.create!(name: 'Non-Fiction')

Book.create!([{
                  title: "Hyperion",
                  author: "Abhiram",
                  description: "The Best",
                  amazon_id: "0553283685",
                  rating:5,
                  finished_on: 1.days.ago,
                  genres: [fiction]
              },

              {
                  title: "BigFoot",
                  author: "ramji",
                  description: "The Myth",
                  amazon_id: "1250040906",
                  rating:4,
                  finished_on: 10.days.ago,
                  genres: [non_fiction]
              },

              {
                  title: "SpaceEx",
                  author: "Elon Musk",
                  description: "The Future",
                  amazon_id: "1500805505",
                  rating:5,
                  finished_on: nil,
                  genres: [non_fiction]
              }])

p "Created #{Book.count} books"