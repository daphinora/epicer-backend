class StepSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :instruction
end
