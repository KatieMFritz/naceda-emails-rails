class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:show, :preview, :edit, :update, :destroy]
  before_action :set_email, only: [:show, :preview]
  http_basic_authenticate_with name: "naceda", password: "vaidehi", except: [:index, :show]

  # GET /newsletters
  def index
    @newsletters = Newsletter.all
  end

  # GET /newsletters/1
  def show
  end

  # GET /newsletters/1/preview
  def preview
    render html: @email.html_safe
  end

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
  end

  # POST /newsletters
  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to @newsletter, notice: 'Newsletter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /newsletters/1
  def update
    if @newsletter.update(newsletter_params)
      redirect_to @newsletter, notice: 'Newsletter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /newsletters/1
  def destroy
    @newsletter.destroy
    redirect_to newsletters_url, notice: 'Newsletter was successfully destroyed.'
  end

private

  # Use callbacks to share common setup or constraints between actions.
  def set_newsletter
    @newsletter = Newsletter.find(params[:id])
  end

  # Get the inlined contents of the newsletter email
  def set_email
    @email = NewsletterMailer.newsletter(@newsletter).body.decoded.
      gsub(/<!--\s*STRIP:.+?-->/, '').
      gsub(/\n\s*\n\s*\n/, "\n\n")
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def newsletter_params
    params.require(:newsletter).permit(:subject, :date, :sender, :teaser_text, :naceda_news, :member_news, :federal_news, :partner_news, :naceda_events, :member_events, :federal_events, :partner_events, :resources, :jobs)
  end
end
