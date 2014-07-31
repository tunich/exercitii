Rails.application.routes.draw do
  root "tucu#index"
  get "tucu"=>"tucu#index",as:"exercises"
  post "tucu"=>"tucu#create"
  get "tucu/new"=> "tucu#new",as:"new_exercise"
  get "tucu/:id"=>"tucu#show",as:"exercise"
  get "tucu/:id/edit"=>"tucu#edit",as:"edit_exercise"
  patch "tucu/:id" =>"tucu#update"
  put "tucu/:id"=>"tucu#update"
  delete "tucu/:id"=>"tucu#destroy"
end
