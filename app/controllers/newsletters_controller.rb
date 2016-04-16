class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:show, :preview, :edit, :update, :destroy]
  http_basic_authenticate_with name: "naceda", password: "vaidehi", except: [:index, :show]


  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.all
  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
    render :layout => 'layouts/email'
    # document = Roadie::Document.new(
    #   render_to_string layout: 'email'
    # )
    # document.asset_providers = [
    #   Roadie::FilesystemProvider.new(File.dirname(__FILE__) + '/assets/')
    # ]
    # send_data document.transform, type: Mime::HTML
  end

  # GET /newsletters/1/preview
  def preview
    # require 'premailer'
    # premailer = Premailer.new('http://example.com/myfile.html', :warn_level => Premailer::Warnings::SAFE)
    # # Write the HTML output
    # File.open("output.html", "w") do |fout|
    #   fout.puts premailer.to_inline_css
    # end
    #
    # # Write the plain-text output
    # File.open("output.txt", "w") do |fout|
    #   fout.puts premailer.to_plain_text
    # end
    #
    # # Output any CSS warnings
    # premailer.warnings.each do |w|
    #   puts "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}"
    # end
  end

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render :show, status: :created, location: @newsletter }
      else
        format.html { render :new }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletters/1
  # PATCH/PUT /newsletters/1.json
  def update
    respond_to do |format|
      if @newsletter.update(newsletter_params)
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsletter }
      else
        format.html { render :edit }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter.destroy
    respond_to do |format|
      format.html { redirect_to newsletters_url, notice: 'Newsletter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:newsletter).permit(:subject, :date, :sender, :teaser_text, :naceda_news, :member_news, :federal_news, :partner_news, :naceda_events, :member_events, :federal_events, :partner_events, :resources, :jobs)
    end
end
