crumb :root do
  link "アイテム一覧", root_path
end

#item edit
crumb :itemedit do
  link "修正", edit_item_path
  parent :root
end

#users
crumb :users do
  link "ユーザページ", edit_user_registration_path
  parent :root
end

# users edit
crumb :useredit do 
  link "修正", edit_user_registration_path
  parent :users
end

#users profiles
crumb :userprofiles do
  link "修正", edit_userprofile_path
  parent :users
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).