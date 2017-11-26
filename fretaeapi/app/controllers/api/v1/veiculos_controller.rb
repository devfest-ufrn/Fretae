module Api
  module V1
    class VeiculosController < ApplicationController
      def index
        veiculos = Veiculo.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Veiculos recebidos', data:veiculos},status: :ok
      end

      def show
        veiculo = Veiculo.find(params[:id])
        render json: {status: 'SUCCESS', message:'Veiculo recebido', data:veiculo},status: :ok
      end

      def create
        veiculo = Veiculo.new(veiculo_params)

        if veiculo.save
          render json: {status: 'SUCCESS', message:'Veiculo cadastrado', data:veiculo},status: :ok
        else
          render json: {status: 'ERROR', message:'Veiculo não cadastrado', data:veiculo.errors},status: :unprocessable_entity
        end
      end

      def destroy
        veiculo = Veiculo.find(params[:id])
        veiculo.destroy
        render json: {status: 'SUCCESS', message:'Veiculo removido', data:veiculo},status: :ok
      end

      def update
        veiculo = Veiculo.find(params[:id])
        if veiculo.update_attributes(veiculo_params)
          render json: {status: 'SUCCESS', message:'Veiculo atualizado', data:veiculo},status: :ok
        else
          render json: {status: 'ERROR', message:'Veiculo não atualizado', data:veiculo.errors},status: :unprocessable_entity
        end
      end

      private

      def veiculo_params
        params.permit(:categoria, :cor, :marca, :modelo, :ano)
      end
    end
  end
end
