PushType.setup do |config|

  # By default all node types can be placed at the root of the
  # content tree. Alternatively, set an array of node type symbols
  # to whiltelist acceptable root nodes.
  config.root_nodes = :all

  # Set the slug of the node that the `NodesFrontEndContoller` will
  # render when visting the root URL of the site (the homepage).
  # This setting can be overridden in config/routes.rb.
  config.home_slug = 'home'

  # Set an array of node type symbols which will not be exposed to
  # the `NodesFrontEndContoller`. These nodes will not be accessible
  # through their permalink.
  config.unexposed_nodes = []

  # Media styles allow you to predefine a collection of geometry
  # strings for resizing images on the fly with the `Asset#media`
  # method. Example: `image.media(:large)`
  config.media_styles = {
    large:    '1024x1024>',
    medium:   '512x512>',
    small:    '256x256>'
  }

  # Configure the email address to be used as the "from" address
  # for PushType's build in mailers.
  config.mailer_sender = 'pushtype@example.com'

  # PushType uses Dragonfly for managing uploaded images/assets.
  # Dragonfly datastore configuration
  config.dragonfly_datastore = :file
  config.dragonfly_datastore_options = {
    root_path:    Rails.root.join('public/system/dragonfly', Rails.env),
    server_root:  Rails.root.join('public')
  }
  
  # For S3 storage, remember to add to Gemfile:
  # gem 'dragonfly-s3_data_store'
  # config.dragonfly_datastore = :s3
  # config.dragonfly_datastore_options = {
  #   bucket_name:        ENV['S3_BUCKET'],
  #   access_key_id:      ENV['S3_ACCESS_KEY_ID'],
  #   secret_access_key:  ENV['SECRET_ACCESS_KEY_ID']
  # }

  # config.dragonfly_secret = 'ab55fb027089535ae51038a63fb49ceb528a48f15ed3c45f10c4a5f216296548'

end