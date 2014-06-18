class ApplicationController < ActionController::Base

  def users
    if %w(gfagundez mnieves afast).include?(params[:search_text])
      render json: success_json(params[:search_text])
    else
      head 404
    end
  end

  private

  def success_json(username)
    [{'user' =>
          {
              'active' => nil,
              'created_at' => '2013-06-28T02:49:51Z',
              'customer_id' => nil,
              'domain' => 'numerex',
              'email' => "#{username}@numerex.com",
              'first_name' => 'Username',
              'id' => 64,
              'identity' => username,
              'last_login_at' => '2013-08-07T14:57:51Z',
              'last_name' => 'MooveIt',
              'locale' => 'en',
              'page_size' => 100,
              'rich_mode' => false,
              'role_id' => 1,
              'theme' => 1,
              'updated_at' => '2013-08-07T14:57:51Z'
          }
     }].to_json
  end

end
