namespace :import do
  desc 'Import Layout from Middleman'
  task :layout do
    layout = 'app/views/layouts/application.html.slim'
    `cp ~/projekty/ruby/virtkick-prototype/source/layouts/layout.html.slim #{layout}`

    replace 'current_page.data.title', '@title', layout
    replace "link rel='stylesheet' href='/css/virtkick.css'", "= stylesheet_link_tag 'application', media: 'all'", layout
    replace "= javascript_include_tag '/js/snippets.js'", "= javascript_include_tag 'snippets'\n    = csrf_meta_tags", layout
    replace "= partial '", "= render partial: 'layouts/", layout
    replace "= yield_content", "= yield", layout
    replace "script src='/js/virtkick.js'", "= javascript_include_tag 'application'", layout
    replace "img src='/img/", "= image_tag '", layout
    replace " class='pix'", ", class: 'pix'", layout

    `cp ~/projekty/ruby/virtkick-prototype/source/_newsletter.html.slim app/views/layouts/_newsletter.html.slim`

    css = 'app/assets/stylesheets/application.css.scss'
    `cp ~/projekty/ruby/virtkick-prototype/source/css/virtkick.css.scss #{css}`
    replace "@import 'vendor/*';", "@import 'vendor/*.css.scss'; // ignore .less for now", css

    `cp ~/projekty/ruby/virtkick-prototype/source/css/bootstrap-customize.css.scss app/assets/stylesheets`
    replace "$icon-font-path: '/font/';", "$icon-font-path: '/assets/';", css

    css_dir = '~/projekty/ruby/virtkick-prototype/source/css'
    `mkdir -p app/assets/stylesheets/pages`
    `cp -r #{css_dir}/pages app/assets/stylesheets`
  end

  def replace what, with, where
    ENV['WHAT'] = what
    ENV['WITH'] = with
    `ruby -pi -e "gsub(ENV['WHAT'], ENV['WITH'])" #{where}`
    ENV['WHAT'] = ENV['WITH'] = nil
  end
end
