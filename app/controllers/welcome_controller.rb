class WelcomeController < ApplicationController
    def landing
        @the_user = current_user
        
        puts '#########################'
        puts 'roles --> ' + @the_user.roles.to_s
        puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
        
        roles = []
        
        if not current_user.nil?
            roles = current_user.roles
        end
        
        if roles.include? :user
            redirect_to search_index_path
        elsif roles.include? :analyst
            redirect_to evidence_sources_accepted_path
        elsif roles.include? :moderator
            redirect_to evidence_sources_new_submitted_path
        end
        

    end
    
    def admin
    end

    def denied
    end
end
