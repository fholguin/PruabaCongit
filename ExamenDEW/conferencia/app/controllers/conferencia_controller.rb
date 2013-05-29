class ConferenciaController < ApplicationController
  # GET /conferencia
  # GET /conferencia.json
  def index
    @conferencia = Conferencium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conferencia }
    end
  end

  # GET /conferencia/1
  # GET /conferencia/1.json
  def show
    @conferencium = Conferencium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conferencium }
    end
  end

  # GET /conferencia/new
  # GET /conferencia/new.json
  def new
    @conferencium = Conferencium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conferencium }
    end
  end

  # GET /conferencia/1/edit
  def edit
    @conferencium = Conferencium.find(params[:id])
  end

  # POST /conferencia
  # POST /conferencia.json
  def create
    @conferencium = Conferencium.new(params[:conferencium])

    respond_to do |format|
      if @conferencium.save
        format.html { redirect_to @conferencium, notice: 'Conferencium was successfully created.' }
        format.json { render json: @conferencium, status: :created, location: @conferencium }
      else
        format.html { render action: "new" }
        format.json { render json: @conferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conferencia/1
  # PUT /conferencia/1.json
  def update
    @conferencium = Conferencium.find(params[:id])

    respond_to do |format|
      if @conferencium.update_attributes(params[:conferencium])
        format.html { redirect_to @conferencium, notice: 'Conferencium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conferencia/1
  # DELETE /conferencia/1.json
  def destroy
    @conferencium = Conferencium.find(params[:id])
    @conferencium.destroy

    respond_to do |format|
      format.html { redirect_to conferencia_url }
      format.json { head :no_content }
    end
  end
end
