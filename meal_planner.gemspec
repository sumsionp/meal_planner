Gem::Specification.new do |s|
  s.name         = "meal_planner"
  s.version      = "1.0.0"
  s.author       = "Peter Sumsion"
  s.email        = "sumsionp@gmail.com"
  s.homepage     = "https://github.com/sumsionp/meal_planner"
  s.summary      = "Command line meal planning program"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'mealplan' ]

  s.required_ruby_version = '>=1.9'
  s.add_runtime_dependency 'activesupport', '4.0.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'timecop', '>=0.6.3'
end
