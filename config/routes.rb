DocTico::Application.routes.draw do
  
  match '/api/api_doc_tico/autenticar_usuario',     to: 'api/api_doc_tico#autenticar_usuario',     via: ['get', 'post']
  match '/api/api_doc_tico/nuevo_usuario',          to: 'api/api_doc_tico#nuevo_usuario',          via: 'get'
  match '/api/api_doc_tico/cerrar_sesion',          to: 'api/api_doc_tico#cerrar_sesion',          via: 'get'  
  match '/api/api_doc_tico/centros_salud',          to: 'api/api_doc_tico#centros_salud',          via: 'get'
  match '/api/api_doc_tico/nombres_centros_salud',  to: 'api/api_doc_tico#nombres_centros_salud',  via: 'get'
  match '/api/api_doc_tico/citas',                  to: 'api/api_doc_tico#citas',                  via: 'get' 
  match '/api/api_doc_tico/nueva_cita',             to: 'api/api_doc_tico#nueva_cita',             via: 'get' 
  match '/api/api_doc_tico/presion_arterial',       to: 'api/api_doc_tico#presion_arterial',       via: 'get' 
  match '/api/api_doc_tico/nueva_presion_arterial', to: 'api/api_doc_tico#nueva_presion_arterial', via: 'get' 

  resources :usuarios

  get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :centros
  resources :sesiones, only: [:new, :create, :destroy]

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  match '/signup',  to: 'usuarios#new',         via: 'get'
  match '/signin',  to: 'sesiones#new',         via: 'get'
  match '/signout', to: 'sesiones#destroy',     via: 'delete'
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
