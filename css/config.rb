# require 'compass/import-once/activate'
# Require any additional compass plugins here.
require 'rb-notifu'

on_stylesheet_saved do |filename|
  Notifu::show :message => "#{File.basename(filename)} updated!",:title =>"Files Updated!" ,:type => :info do |status|
    p Notifu::ERRORS.include? status
  end
end

on_stylesheet_error do |filename, message|
  Notifu::show :message => "#{File.basename(filename)} error!\n #{message}",:title =>"Files Updated!" ,:type => :error do |status|
    p Notifu::ERRORS.include? status
  end
end
# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
