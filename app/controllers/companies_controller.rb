class CompaniesController < ApplicationController
  COMPANIES_PER_PAGE = 6

  def index
    # para mi que index no va
    #@companies = Company.all
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
      @page =  params[:page].to_i
    else
      @page =  params[:page].to_i
      @companies = Company.offset(@page * COMPANIES_PER_PAGE).limit(COMPANIES_PER_PAGE)
    end
  end

  def show
    @company = Company.find(current_user.company.id)
    @offers = Offer.where("company_id = #{current_user.company.id}")
  end

  def new
    @company = Company.new
    # authorize @company
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    # authorize @company
    if @company.save
      redirect_to company_path(current_user.company.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @company = Company.find(current_user.company.id)
    # authorize @company
  end

  def update
    # authorize @company
    @company = Company.find(current_user.company.id)
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(:description, :name, :photo)
  end
end
