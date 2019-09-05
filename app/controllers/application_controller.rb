class ApplicationController < ActionController::Base

    def hello
        render html: "Hello, DogHero!"
    end
end
