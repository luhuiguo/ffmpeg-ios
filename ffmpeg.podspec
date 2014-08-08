Pod::Spec.new do |s|

  s.name         = "ffmpeg"
  s.version      = "2.3.1"
  s.summary      = "A iOS perbuilt lib for ffmpeg."
  s.license      = { :type => 'LGPL v2.1+', :file => 'LICENSE' }
  s.homepage     = "http://www.ffmpeg.org/"

  s.author       = { "Lu Huiguo" => "luhuiguo@gmail.com" }

  s.source  = { :git => "https://github.com/luhuiguo/ffmpeg-ios.git", :tag => s.version.to_s }

  s.source_files = '**/*.h'
  s.preserve_paths = '**/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/ffmpeg/lib" }

  s.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
end
