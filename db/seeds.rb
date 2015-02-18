Book.destroy_all

Book.create!([{
                  title: "Hyperion",
                  author: "Abhiram",
                  description: "The Best",
                  amazon_id: "0553283685",
                  rating:5,
                  finished_on: 1.days.ago
              },

              {
                  title: "BigFoot",
                  author: "ramji",
                  description: "The Myth",
                  amazon_id: "1250040906",
                  rating:4,
                  finished_on: 10.days.ago
              },

              {
                  title: "SpaceEx",
                  author: "Elon Musk",
                  description: "The Future",
                  amazon_id: "1500805505",
                  rating:5,
                  finished_on: nil
              }])

p "Created #{Book.count} books"