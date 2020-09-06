gem 'rack-rewrite', '~> 1.5.0'
require 'rack/rewrite'

use Rack::Rewrite do
r301 %r{.*}, 'https://www.safestead.net$&', :scheme => 'http'
r301 %r{.*}, 'https://safestead.net$&', :scheme => 'http'
r301 %r{.*}, 'https://safestead.net$&'
end

use Rack::Static,
  :urls => ["/images", "/js", "/css", "/assets"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}