unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials[:aws][:aws_access_key_id],
      aws_secret_access_key: Rails.application.credentials[:aws][:aws_secret_access_key],
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'recommen-s3'
    config.cache_storage = :fog
  end
end