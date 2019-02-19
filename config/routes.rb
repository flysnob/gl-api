Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }

  root to: 'pages#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticate :user do
    resources :users, except: [] do
    end

    resources :subscriptions, except: [] do
    end

    resources :entities, except: [] do
    end

    resources :entries, except: [] do
    end

    resources :consolidating_entries, except: [] do
    end

    resources :accounts, except: [] do
    end

    resources :consolidations, except: [] do
    end

    resources :years, except: [] do
    end
  end
end
