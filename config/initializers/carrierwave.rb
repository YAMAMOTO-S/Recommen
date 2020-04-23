unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAXW6JXB6E5N5LAN6R',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'recommen-s3'
    config.cache_storage = :fog
  end
end