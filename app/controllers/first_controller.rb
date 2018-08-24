class FirstController < ApplicationController
    def woori
     @post = Post.all
    end
    def join
    end
    def join_process
        u=Username.new
        u.username=params[:username]
        u.password=params[:password]
        u.address=params[:address]
        u.phone=params[:phone]
        u.save
        
        redirect_to "/first/login"
    end
    def login
    end
   
    def login_process
        u = Username.where(:username => params[:username],
                     :password => params[:password]).take
                     
        n = Mean.where(:username => params[:username],
                     :password => params[:password]).take
        
        if n.present?
        redirect_to "/first/meaning"
        elsif u.nil?
        redirect_to "/first/login"
        else
        session[:user_id]= u.id
        redirect_to "/first/woori1"
        end
    end
    def logout
        reset_session
        redirect_to "/"
    end
    def woori1
        @username=""
        unless session[:user_id].nil?
        @username = Username.find(session[:user_id]).username
        end
        @use =  Username.find(session[:user_id])
        
        @post= Post.all
    end
  
    def update
        @use = Usenamer.find params[:id]
    end
    def edit
        u=Username.find params[:id]
        u.username=params[:username]
        u.password=params[:password]
        u.address=params[:address]
        u.phone=params[:phone]
        u.save
        
        redirect_to "/first/login"
    end
    def destroy
        u=Username.find params[:id]
        u.delete
        
        redirect_to "/first/login"
    end
     def help
         @all = Quest.all
    end
    def meaning
        @alluser = Username.all
        @post = Post.all
    end
    def posupdate
        
        u=Post.new
        u.title = params[:title]
        u.content = params[:content]
        u.save
        
        redirect_to "/first/meaning"
    end
     def destr
        u=Post.find params[:id]
        u.delete
        
        redirect_to "/first/meaning"
    end
    def destro
        u=Username.find params[:id]
        u.delete
        
        redirect_to "/first/meaning"
    end
    def dest
        u=Admit.find params[:id]
        u.delete
        
        redirect_to "/first/admit"
    end
    def admit
        @admiall = Admitwait.all
        @admi = Admit.all
    end
    def admi
        two = Admitwait.find params[:id]
        one = Admit.new
        one.name = two.name
        one.title = two.title
        one.divide = two.divide
        one.save
        two.delete
        
        redirect_to "/first/admit"
    end
end
