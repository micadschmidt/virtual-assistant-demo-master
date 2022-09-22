class OffersController < ApplicationController
  before_action :set_user
  before_action :set_offer, only: %i[show edit update destroy]
  OFFERS_PER_PAGE = 6

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR tag ILIKE :query"
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
      @page =  params[:page].to_i
    else
      #@offers = Offer.all
      @page =  params[:page].to_i
      @offers = Offer.offset(@page * OFFERS_PER_PAGE).limit(OFFERS_PER_PAGE)
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @applications = Application.where(offer: @offer)
    # @application = Application.find(params[:id])
  end

  def new
    if @user.company.nil?
      redirect_to new_company_path
    else
      @offer = Offer.new
      # authorize @offer
    end
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.company_id = @user.company.id
    if @offer.save
      redirect_to company_path(@user.company)
    else
      render :new, status: :unprocessable_entity
    end
    # authorize @offer
  end

  def edit
    # authorize @company
  end

  def update
    if @offer.update(offer_params)
      redirect_to company_path
    else
      render "Edit"
    end
  end

  def destroy
    @offer.destroy
    redirect_to company_path, status: :see_other
  end

  private

  def offer_params
    params.require(:offer).permit(:description, :tag, :title, :company_id)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
