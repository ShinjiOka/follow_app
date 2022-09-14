class RelationshipsController < ApplicationController
    before_action :authenticate_user!

    def create
        following = current_user.relationships.build(follower_id: params[:user_id])
        following.save #.saveでフォローできる理由を明確にする
        respond_to do |format|
            if @user.save
              format.html { redirect_to request.referer || root_path, notice: "User was successfully created." }
            #   format.json { render :show, status: :created, location: @user }
            else
              format.html { redirect_to root_path, status: :unprocessable_entity }
            #   format.json { render json: @user.errors, status: :unprocessable_entity }
            end
          end
        # redirect_to request.referer || root_path, notice: "Success"
        # render root_path
        # render 'homes/top'
    end

    def destroy
        following = current_user.relationships.find_by(follower_id: params[:user_id])
        following.destroy #.destroyでフォロー解除できる理由を明確にする
        responed_to do |format|
            format.html { redirect_to request.referer || root_path, notice: "Task was successfully destroyed", status: :see_other }
            format.json { head :no_content }
        end
        # redirect_to request.referer || root_path, notice: "Success"
        # render 'homes/top'
    end
end
