module Api
  module V1
    class PessoasController < ApplicationController
      def index
        pessoas = Pessoa.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Pessoas recebidas', data:pessoas},status: :ok
      end

      def show
        pessoa = Pessoa.find(params[:id])
        render json: {status: 'SUCCESS', message:'Pessoa recebida', data:pessoa},status: :ok
      end

      def create
        pessoa = Pessoa.new(pessoa_params)

        if pessoa.save
          render json: {status: 'SUCCESS', message:'Pessoa cadastrada', data:pessoa},status: :ok
        else
          render json: {status: 'ERROR', message:'Pessoa não cadastrada', data:pessoa.errors},status: :unprocessable_entity
        end
      end

      def destroy
        pessoa = Pessoa.find(params[:id])
        pessoa.destroy
        render json: {status: 'SUCCESS', message:'Pessoa removida', data:pessoa},status: :ok
      end

      def update
        pessoa = Pessoa.find(params[:id])
        if pessoa.update_attributes(pessoa_params)
          render json: {status: 'SUCCESS', message:'Pessoa atualizada', data:pessoa},status: :ok
        else
          render json: {status: 'ERROR', message:'Pessoa não atualizada', data:pessoa.errors},status: :unprocessable_entity
        end
      end

      private

      def pessoa_params
        params.permit(:nome, :email, :senha, :telefone, :veiculo)
      end
    end
  end
end
