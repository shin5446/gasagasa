class PropertiesController < ApplicationController
    before_action :set_property, only: [:show, :edit, :update, :destroy]

    def index
        @properties = Property.all
    end

    def show
        @stations = @property.stations
    end

    def new
        @property = Property.new
        # @property.stations.build
        2.times {@property.stations.build}
    end

    def create
        @property = Property.new(property_params)
        if @property.save
          redirect_to properties_path, notice: "物件を登録しました！"
        else
         render 'new'
        end
    end

    def edit
    end

    def update
        if @property.update(property_params)
          redirect_to properties_path, notice: "物件を更新しました！"
        else
         render 'edit'
        end
    end

    def destroy
        @property.destroy
        redirect_to properties_path, notice:"ブログを削除しました！"
    end

    private

    def property_params
      params.require(:property).permit(:name, :content, :price, :age, :address, stations_attributes: [:name, :line, :time])
    end

    def set_property
        @property = Property.find(params[:id])
    end
end