TotallyAwesomeRecipes::Application.routes.draw do
  root 'recipes#index'
  match('/recipes/new', {:via => :post, :to => 'recipes#create'})
  match('/recipes/new', {:via => :get, :to => 'recipes#new'})

  match('/recipes/:id', {:via => :delete, :to => 'recipes#delete'})
  match('/recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('/recipes/:id/edit', {:via => [:put, :patch], :to => 'recipes#update'})
  match('/recipes/:id', {:via => :get, :to => 'recipes#show'})

end
