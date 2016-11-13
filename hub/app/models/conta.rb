class Conta < ActiveRecord::Base

	validates_presence_of :nome, message: " - deve ser preenchido"
	validates_uniqueness_of :nome, message: " - Já existe uma conta com esse nome"
	validates_inclusion_of :status, in: ["ATIVA", "BLOQUEADA", "CANCELADA"]
	validates_presence_of :data_criacao, message: " - deve ser preenchido"

	validate :pai_modificado

	#Validamos se a conta possuia pai e passou a nao ter. Isso nao deve ser permitido pois podem
	#existir transacoes que sao especificas de filial assiciadas a conta, o que geraria insonsistencia.
	def pai_modificado
    	if (self.changed.include? 'pai_id') & (self.pai == nil)    		
      		self.errors.add(:pai, "Não é possível tornar Matriz uma conta Filial")
    	end
  	end

	has_many :filiais, class_name: "Conta",
                      foreign_key: "pai_id"
    belongs_to :pai, class_name: "Conta"
end
