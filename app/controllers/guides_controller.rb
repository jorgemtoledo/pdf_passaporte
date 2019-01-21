class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  # GET /guides
  # GET /guides.json
  def index
    @guides = Guide.all
  end

  # GET /guides/1
  # GET /guides/1.json
  def show
    @guide = Guide.all.find(params[:id])
    
    respond_to do |format|
      format.html
      format.json
      format.pdf { render pdf: "Show",
      :page_size        => 'A4',
      :dpi              => '300',
      :margin           => {:top    => 0,
                            :bottom => 0,
                            :left   => 0,
                            :right  => 0},
      :margin => {
          :top => 30,
          :bottom => 0
        },
        template: 'guides/show',
        layout: 'pdf.html'
      }
    end
  end
  

  # Termo PDF
  def termo
    @guide = Guide.all.find(params[:id])
    respond_to do |format|
      format.pdf { render pdf: "Termo",
      :page_size        => 'A4',
      :dpi              => '300',
      :margin           => {:top    => 0,
                            :bottom => 0,
                            :left   => 0,
                            :right  => 0},
      :margin => {
          :top => 30,
          :bottom => 0
        },
        layout: 'pdf.html',
        :template => 'guides/termo.pdf.erb'
      }
    end    
  end

  # Guia PDF
  def guia
    @guide = Guide.all.find(params[:id])
    respond_to do |format|
      format.pdf { render pdf: "Guia",
      :page_size        => 'A4',
      :dpi              => '300',
      :margin           => {:top    => 0,
                            :bottom => 0,
                            :left   => 0,
                            :right  => 0},
      :margin => {
          :top => 30,
          :bottom => 0
        },
        layout: 'pdf.html',
        :template => 'guides/guia.pdf.erb'
      }
    end    
  end  

  # GET /guides/new
  def new
    @guide = Guide.new
  end

  # GET /guides/1/edit
  def edit
  end

  # POST /guides
  # POST /guides.json
  def create
    @guide = Guide.new(guide_params)

    respond_to do |format|
      if @guide.save
        format.html { redirect_to @guide, notice: 'Guide was successfully created.' }
        format.json { render :show, status: :created, location: @guide }
      else
        format.html { render :new }
        format.json { render json: @guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guides/1
  # PATCH/PUT /guides/1.json
  def update
    respond_to do |format|
      if @guide.update(guide_params)
        format.html { redirect_to @guide, notice: 'Guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide }
      else
        format.html { render :edit }
        format.json { render json: @guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guides/1
  # DELETE /guides/1.json
  def destroy
    @guide.destroy
    respond_to do |format|
      format.html { redirect_to guides_url, notice: 'Guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide
      @guide = Guide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_params
      params.require(:guide).permit(:company, :address, :patient, :doctor, :date, :hour, :specialty, :exam, :document, :passport, :value, :registration)
    end
end
