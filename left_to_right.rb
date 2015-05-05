require 'r2'

input_stylesheet = ARGV[0]
stylesheet_basename = File.basename(input_stylesheet, '.css')
ltr_styles = File.read(input_stylesheet)
rtl_styles = R2.r2(ltr_styles)
rtl_stylesheet = stylesheet_basename + '_rtl.css'

File.open(rtl_stylesheet, 'w') do |file|
  file.puts rtl_styles
end
