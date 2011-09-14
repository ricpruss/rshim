class SecurityTypesController < ApplicationController
  # GET /security_types
  # GET /security_types.json
  def index
    @security_types = SecurityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_types }
    end
  end

=begin
The scaffolding is all reference by ID and does not work here.

  # GET /security_types/1
  # GET /security_types/1.json
  def show
    @security_type = SecurityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_type }
    end
  end

  # GET /security_types/new
  # GET /security_types/new.json
  def new
    @security_type = SecurityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_type }
    end
  end

  # GET /security_types/1/edit
  def edit
    @security_type = SecurityType.find(params[:id])
  end

  # POST /security_types
  # POST /security_types.json
  def create
    @security_type = SecurityType.new(params[:security_type])

    respond_to do |format|
      if @security_type.save
        format.html { redirect_to @security_type, notice: 'Security type was successfully created.' }
        format.json { render json: @security_type, status: :created, location: @security_type }
      else
        format.html { render action: "new" }
        format.json { render json: @security_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_types/1
  # PUT /security_types/1.json
  def update
    @security_type = SecurityType.find(params[:id])

    respond_to do |format|
      if @security_type.update_attributes(params[:security_type])
        format.html { redirect_to @security_type, notice: 'Security type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_types/1
  # DELETE /security_types/1.json
  def destroy
    @security_type = SecurityType.find(params[:id])
    @security_type.destroy

    respond_to do |format|
      format.html { redirect_to security_types_url }
      format.json { head :ok }
    end
  end
=end

end
