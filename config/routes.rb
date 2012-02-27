SampleApiVersioningRoute::Application.routes.draw do

  namespace :api do

    constraints ApiVersion.new(1) do
      scope :module => :v1 do
        resources :crypto, :only => [:encode, :decode] do
          collection do
            get :encode
            get :decode
          end
        end
      end
    end

    constraints ApiVersion.new(2) do
      scope :module => :v2 do
        resources :crypto, :only => [:encode, :decode] do
          collection do
            get :encode
            get :decode
          end
        end
      end
    end

    # constraints ApiVersion.new(1) do
    #   scope :module => :v1 do
    #     get "v1/crypto/encode"
    #     get "v1/crypto/decode"
    #   end
    # end
    #
    # constraints ApiVersion.new(2) do
    #   scope :module => :v2 do
    #     get "v2/crypto/encode"
    #     get "v2/crypto/decode"
    #   end
    # end
    #
    # constraints ApiVersion.new(3) do
    #   scope :module => :v3 do
    #     resources :crypto, :only => [:encode, :decode] do
    #       collection do
    #         get :encode
    #         get :decode
    #       end
    #     end
    #   end
    # end

  end

end