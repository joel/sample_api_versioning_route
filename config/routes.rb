SampleApiVersioningRoute::Application.routes.draw do

  constraints ApiVersion.new(1) do
    scope :module => :api do
      scope :module => :v1 do
        resources :crypto, :only => [:encode, :decode] do
          collection do
            get :encode
            get :decode
          end
        end
      end
    end
  end

  constraints ApiVersion.new(2) do
    scope :module => :api do
      scope :module => :v2 do
        resources :crypto, :only => [:encode, :decode] do
          collection do
            get :encode
            get :decode
          end
        end
      end
    end
  end

  resources :crypto, :only => [:encode, :decode] do
    collection do
      get :encode
      get :decode
    end
  end

end