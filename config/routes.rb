SevenContact::Engine.routes.draw do
  resources :contact_records, except: [:edit]
end