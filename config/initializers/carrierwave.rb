if Rails.env.in?(%(test cucumber))
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    
    config.dropbox_app_key = ENV["APP_KEY"]
    config.dropbox_app_secret = ENV["APP_SECRET"]
    config.dropbox_access_token = ENV["ACCESS_TOKEN"]
    config.dropbox_access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    config.dropbox_user_id = ENV["USER_ID"]
    config.dropbox_access_type = "dropbox"
    # if ENV["provider"] == "AWS"
    #   config.storage = :fog

    #   config.fog_credentials = {
    #     :provider               => 'AWS',
    #     :aws_access_key_id      => ENV["aws_access_key_id"],
    #     :aws_secret_access_key  => ENV["aws_secret_access_key"]
    #   }

    #   config.fog_directory  = ENV["aws_bucket"]
    #   config.fog_public     = true
    #   config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }
    # else
    #   config.storage = :file
    #   config.permissions = 0666
    #   config.directory_permissions = 0777
    # end
  end
end
