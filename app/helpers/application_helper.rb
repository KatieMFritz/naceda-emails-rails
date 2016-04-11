module ApplicationHelper

  def emailify template
      document = Roadie::Document.new(
        erb(:"emails/#{template}", layout: :'layouts/email')
          .gsub(/<!--\s*STRIP:.+?-->/, '')
      )
      document.asset_providers = [
        Roadie::FilesystemProvider.new(File.dirname(__FILE__) + '/public/')
      ]
      document.transform
    end

end
