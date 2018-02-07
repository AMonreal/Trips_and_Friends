class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end

  def delete
    # est-ce que je dois écrire une méthode pour permettre à un user de supprimer un
    # de ses friends ou je rajouterai un simple bouton ?
  end

  def show
    @friends = Friend.all
    # la show d'un friend sera sa profile page
  end

  def index
    @friends = Friend.all
    # je veux avoir la liste des friends d'un user
    # trier la liste selon l'id d'un user je ne sais pas comment écrire ça
  end

  # est-ce que je mets des friends params ?

   private :friend_params

  def set_friend
    @friend = Friend.find(params[:id])
  end
end
