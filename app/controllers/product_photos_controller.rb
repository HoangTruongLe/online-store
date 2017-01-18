class ProductPhotosController < ApplicationController
  def destroy
    @product_photo = ProducPhoto.find(params[:id])
    product = @product_photo.product
    @product_photo.destroy
    respond_to do |format|
      format.html {redirect_to product_url(product), notice: 'Product photo was successfully destroyed.'}
    end
  end
end