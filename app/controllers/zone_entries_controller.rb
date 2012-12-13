class ZoneEntriesController < ApplicationController
  # GET /zone_entries
  # GET /zone_entries.json
  def index
    @zone_entries = ZoneEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zone_entries }
    end
  end

  # GET /zone_entries/1
  # GET /zone_entries/1.json
  def show
    @zone_entry = ZoneEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zone_entry }
    end
  end

  # GET /zone_entries/new
  # GET /zone_entries/new.json
  def new
    @zone_entry = ZoneEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zone_entry }
    end
  end

  # GET /zone_entries/1/edit
  def edit
    @zone_entry = ZoneEntry.find(params[:id])
  end

  # POST /zone_entries
  # POST /zone_entries.json
  def create
    @zone_entry = ZoneEntry.new(params[:zone_entry])

    respond_to do |format|
      if @zone_entry.save
        format.html { redirect_to @zone_entry, notice: 'Zone entry was successfully created.' }
        format.json { render json: @zone_entry, status: :created, location: @zone_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @zone_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zone_entries/1
  # PUT /zone_entries/1.json
  def update
    @zone_entry = ZoneEntry.find(params[:id])

    respond_to do |format|
      if @zone_entry.update_attributes(params[:zone_entry])
        format.html { redirect_to @zone_entry, notice: 'Zone entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zone_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zone_entries/1
  # DELETE /zone_entries/1.json
  def destroy
    @zone_entry = ZoneEntry.find(params[:id])
    @zone_entry.destroy

    respond_to do |format|
      format.html { redirect_to zone_entries_url }
      format.json { head :no_content }
    end
  end
end
