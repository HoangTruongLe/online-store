class ProductPhotosController < ApplicationController
  before_action :set_product_photo, only: [:destroy]
  def destroy
    @product_photo.photo = nil
    @product_photo.save
    @product_photo.destroy
    respond_to do |format|
        format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
        format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_photo
      @product_photo = ProductPhoto.find(params[:id])
    end
    
end
