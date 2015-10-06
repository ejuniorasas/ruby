module ApplicationHelper

    def list_products
      @produtos = Complement.where(tipo: 'Produto').order(:nome)
    end

    def list_clients
      @clientes = Complement.where(tipo: 'Cliente')
      @clientes.push(Complement.where(tipo: 'Cliente/Fornec.'))
    end

    def list_fornecedor
      @fornecedores = Complement.where(tipo: 'Fornecedor')
      @fornecedores.push(Complement.where(tipo: 'Cliente/Fornec.'))
    end


end
