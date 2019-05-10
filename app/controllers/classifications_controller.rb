class ClassificationsController < ApplicationController
before_action :require_admin, except: [:index, :show]
    

def index

@classifications = Classification.paginate(page: params[:page], per_page: 5)

end



def new

@classification = Classification.new

end


def create

@classification = Classification.new(classification_params)

if @classification.save

flash[:success] = "Classification was created successfully"

redirect_to classifications_path

else

render 'new'

end

end

def edit

@classification = Classification.find(params[:id])

end

def update

@classification = Classification.find(params[:id])

if @classification.update(classification_params)

flash[:success] = "Classification name was successfully updated"

redirect_to classification_path(@classification)

else

render 'edit'

end

end


def show
    @classification = Classification.find(params[:id])
    @classification_articles = @classification.articles.paginate(page: params[:page], per_page: 15)
end


private


    def classification_params

    params.require(:classification).permit(:classification, :class_description)

    end
    

    def require_admin
        if !logged_in? || (logged_in? and !current_user.admin?)
            flash[:danger] = "Only admins can perform this action"
        redirect_to classifications_path
        end
    end    

end