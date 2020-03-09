CarrierWave.configure do |config|
    config.fog_creadentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SCRET_ACCESS_KEY'],
    }
    config.storage = :fog
    config.permissions = 0666
    config.cache_dir = "#{Rails.root}/tmp/"
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end