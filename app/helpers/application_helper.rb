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

  def hr
    %(
      <table class="hr" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    )
  end

  def button url, text
    %(
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <div>
              <!--[if mso]>
                <v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" href="#{url}" style="height:36px;v-text-anchor:middle;width:300px;" arcsize="5%" strokecolor="#ccc" fillcolor="#ccc">
                  <w:anchorlock/>
                  <center style="color:#ffffff;>#{text}</center>
                </v:roundrect>
              <![endif]-->
              <a href="#{url}" class="button" title="#{url}">#{text}</a>
            </div>
          </td>
        </tr>
      </table>
    )
  end

end
