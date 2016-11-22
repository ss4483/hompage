Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  # 회사 소개
  get '/intro/info' => "intro#info"
  get '/intro/biz' => "intro#biz"
  get '/intro/organization' => "intro#organization"
  get '/intro/patent' => "intro#patent"
  get '/intro/location' => "intro#location"
  # 제품 소개
  get '/product/con_1' => "product#con_1"
  get '/product/con_2' => "product#con_2"
  get '/product/con_3' => "product#con_3"
  get '/product/con_4' => "product#con_4"
  get '/product/con_5' => "product#con_5"
  get '/product/river_1' => "product#river_1"
  get '/product/river_2' => "product#river_2"
  get '/product/river_3' => "product#river_3"
  get '/product/river_4' => "product#river_4"
 # 고객센터
  get '/services/qna' => "services#qna"
  get '/qna_write_view' => "services#qna_write_view"
  post '/qna_write' => "services#qna_write"
  get 'services/one_qna/:qna_id' => "services#one_qna"

  post '/services/qna_update_view/:qna_id'=> 'services#qna_update_view'
  get '/services/qna_update_pass/:qna_id'=> 'services#qna_update_pass'
  post '/services/qna_update/:qna_id'=> 'services#qna_update'

  get '/services/qna_delete_pass/:qna_id'=> 'services#qna_delete_pass'
  post '/services/qna_delete/:qna_id'=> 'services#qna_delete'


  post 'services/one_qna/:qna_id/q_answer' => "services#q_answer"
  post 'services/one_qna/:a_id/q_answer_delete' => "services#q_answer_delete"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
