Rails.application.routes.draw do
  resources :notepads, only: [:index, :update]
  get '/:notepad_url' => 'notepads#show', as: :pad
  get '/share/:notepad_share_url' => 'notepads#share', as: :share_pad

  root 'notepads#index'
end
