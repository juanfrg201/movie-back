require 'rails_helper'

RSpec.describe CategorySerializer, type: :serializer do

	context "whem render index" do 
		let(:category) { create(:category, name: "Terror") } # Crear una categoría con el nombre "Terror"
		let(:serializer) { CategorySerializer.new(category) } # Instanciar el serializador CategorySerializer con la categoría
		let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) } # Crear la serialización utilizando el adaptador correspondiente

		subject { JSON.parse(serialization.to_json) } # Analizar el resultado de la serialización en formato JSON

		it 'includes name attribute' do
			expect(subject['name']).to eq category.name # Verificar que el atributo 'name' en la serialización sea igual a "Terror"
		end
	end
  
end