
class DimensionsValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.send("#{attribute}?".to_sym)
      dimensions = Paperclip::Geometry.from_file(value.queued_for_write[:original].path)
      width = options[:width]
      height = options[:height]

      record.errors[attribute] << "Largura deve ser #{width}px" unless dimensions.width == width
      record.errors[attribute] << "Altura deve ser #{height}px" unless dimensions.height == height
    end
  end
end