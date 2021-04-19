# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# Pre-created Users
# name:        User's full name
# email:       User's email
# password:    User's password
# mobile:      User's mobile number
# last_active: Datetime of User's last activity
User.create(name: "RAD", email: "RAD@email.com", password: "Rails2020", mobile: "0123456789", last_active: "2020-05-10 14:50:54")
User.create(name: "Alex Alex", email: "example@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-02-14 11:50:54")
User.create(name: "Bob Bob", email: "example-1@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-04-10 12:50:54")
User.create(name: "Cindy Cindy", email: "example-2@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 05:50:54")
User.create(name: "Dan Dan", email: "example-3@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 06:50:54")
User.create(name: "Ethan Ethan", email: "example-4@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 03:50:54")
User.create(name: "Frank Frank", email: "example-5@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Gary Gordon", email: "example-6@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 11:50:54")
User.create(name: "Hairy Harry", email: "example-7@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 12:50:54")
User.create(name: "Ian Ivern", email: "example-8@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 05:50:54")
User.create(name: "James Jester", email: "example-9@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 06:50:54")
User.create(name: "Kye Khan", email: "example-10@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 03:50:54")
User.create(name: "Lisa Lye", email: "example-11@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Moe Mad", email: "example-12@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 11:50:54")
User.create(name: "Noah North", email: "example-13@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 12:50:54")
User.create(name: "Owen Oof", email: "example-14@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 05:50:54")
User.create(name: "Pee Poo", email: "example-15@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 06:50:54")
User.create(name: "Quasar Quarrington", email: "example-16@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 03:50:54")
User.create(name: "Richard Right", email: "example-17@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Steven Strew", email: "example-18@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 12:50:54")
User.create(name: "Thomas The Tank Engine", email: "example-19@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 05:50:54")
User.create(name: "Umar Uriel", email: "example-20@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 06:50:54")
User.create(name: "Vanessa Vu", email: "example-21@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 03:50:54")
User.create(name: "William Wite", email: "example-22@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Xavier Xander", email: "example-23@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Yuri Yarn", email: "example-24@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")
User.create(name: "Zoe Zion", email: "example-25@railstutorial.org", password: "qweqweqwe", mobile: "0123456789", last_active: "2020-05-10 08:50:54")

# Pre-created Tags
# name: Topic/Tag Name
Tag.create(name: "A.I")
Tag.create(name: "Android")
Tag.create(name: "AWS")
Tag.create(name: "Games")
Tag.create(name: "Go")
Tag.create(name: "IOS")
Tag.create(name: "Joke")
Tag.create(name: "M.L.")
Tag.create(name: "Node")
Tag.create(name: "News")
Tag.create(name: "Question")
Tag.create(name: "Rails")
Tag.create(name: "Reat")
Tag.create(name: "RMIT")
Tag.create(name: "Vue")
Tag.create(name: "V.R")
Tag.create(name: "Web")

# Pre-created Posts
# title:       Title of the post
# content:     Content/description of the post
# user_id:     User who created the post
# tag_id:      The tag chosen by the user who created the post
# created_at:  Datetime of when the post was created
Post.create(title: "Covid19info (Comments)", content: "This is the content for the post Covid19info", user_id: 1, tag_id: 10, created_at: "2020-05-22 02:45:49")
Post.create(title: "Amazon Go Grocery - Full store open now", content: "This is the content for the post Amazon Go Grocery - Full store open now", user_id: 2, tag_id: 10, created_at: "2020-05-22 02:45:49")
Post.create(title: "Quantum Dot Powered Night Vision For Microscopes", content: "This is the content for the post Quantum Dot Powered Night Vision For Microscopes", user_id: 3, tag_id: 10, created_at: "2020-05-22 02:45:49")
Post.create(title: "Revoult raises $500M at a $5.5B valuation", content: "This is the content for the post Revoult raises $500M at a $5.5B valuation", user_id: 4, tag_id: 1, created_at: "2020-05-22 02:45:49")
Post.create(title: "Mozilla's DNS over HTTPs", content: "This is the content for the post Mozilla's DNS over HTTPs", user_id: 5, tag_id: 10, created_at: "2020-05-22 03:02:23")
Post.create(title: "Google is moving EU citizens' data to US?", content: "This is the content for the post Google is moving EU citizens' data to US?", user_id: 6, tag_id: 10, created_at: "2020-05-22 03:02:23")
Post.create(title: "ZFS on Linux repo renamed to openzfs/ZFS", content: "This is the content for the post ZFS on Linux repo renamed to openzfs/ZFS", user_id: 7, tag_id: 10, created_at: "2020-05-22 03:02:23")
Post.create(title: "Mathematics for the Adventurous Self-Leaner", content: "This is the content for the post Mathematics for the Adventurous Self-Leaner", user_id: 8, tag_id: 1, created_at: "2020-05-22 03:18:02")
Post.create(title: "Isomorphic-Git: What is New in Version 1.0", content: "This is the content for the post Isomorphic-Git: What is New in Version 1.0", user_id: 9, tag_id: 10, created_at: "2020-05-22 03:18:02")
Post.create(title: "Walmart Gets into Health Care", content: "This is the content for the post Walmart Gets into Health Care", user_id: 10, tag_id: 6, created_at: "2020-05-22 03:18:02")
Post.create(title: "China bans consumption and trade of wild animals", content: "This is the content for the post China bans consumption and trade of wild animals", user_id: 11, tag_id: 10, created_at: "2020-05-22 03:23:48")
Post.create(title: "MIDI 2.0 Specifications Available for Download", content: "This is the content for the post MIDI 2.0 Specifications Available for Download", user_id: 12, tag_id: 10, created_at: "2020-05-22 03:23:48`")

# Pre-created Comments
# comment: The text of the comment
# user_id: User who created the comment
# post_id: The post the comment belongs to
# commentable_type: Can either be [Post/Comment] - determines where it is a new comment or nested comment 
# commentable_id:  
Comment.create(comment: "Thanks", user_id: 2, post_id: 1, commentable_type: "Post", commentable_id: 1)
Comment.create(comment: "No worries", user_id: 1, post_id: 1, commentable_type: "Comment", commentable_id: 1)
Comment.create(comment: "Source?", user_id: 3, post_id: 1, commentable_type: "Post", commentable_id: 1)
Comment.create(comment: "https://www.health.gov.au/news/health-alerts/novel-coronavirus-2019-ncov-health-alert", user_id: 1, post_id: 1, commentable_type: "Comment", commentable_id: 3)

