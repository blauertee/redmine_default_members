module RedmineDefaultMembers
  Rails.configuration.to_prepare do
    rbfiles = Rails.root.join('plugins', 'redmine_default_members', 'lib', 'redmine_default_members', '**', '*.rb')
    Dir.glob(rbfiles).each do |file|
      require_dependency file unless File.dirname(file) == Rails.root.join('plugins', 'redmine_default_members', 'lib', 'redmine_default_members', 'hooks').to_s
    end
  end
end

