class ProductosController < ApplicationController
  
  def index
    @productos = Producto.all
  end
  
  def new
    @producto = Producto.new
  end
  
  def create
    @producto = Producto.new(params[:producto].permit!)
    @producto.save
    redirect_to productos_path
  end
  
  def edit
    @producto = Producto.find(params[:id])
  end
  
  def update
    #CONSULTAMOS EL PRODUCTO POR ID
    @productos = Producto.find_by_id(params[:id])
    
    #PREGUNTAMOS SI LA ACTUALIZACION ES CORRECTA Y QUE SOLO PASE LOS PARAMETROS PERMITIDOS
    if @productos.update_attributes(params[:producto].permit!)
      redirect_to :action => "index"
    end
  end
  
  def show
    #CONSULTAMOS EL PRODUCTO POR ID
    @producto = Producto.find_by_id(params[:id])
  end
  
  def destroy
    #CONSULTAMOS EL PRODUCTO POR ID
    @producto = Producto.find_by_id(params[:id])
    @producto.destroy
    redirect_to productos_path
  end
  
end
