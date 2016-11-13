class Pessoa < ActiveRecord::Base
	
	has_many :contas, class_name: "Conta",
                      foreign_key: "conta_id"
end
