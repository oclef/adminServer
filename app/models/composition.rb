class Composition < ParseResource::Base
  fields :name, :key, :createdAt, :updatedAt
  
  def composer
    if self.attributes["composer"].present?
      return @composer ||= Composer.find(self.attributes["composer"]["objectId"])
    end
  end
  
  def collection
    if self.attributes["collection"].present?
      return @collection ||= Collection.find(self.attributes["collection"]["objectId"])
    end
  end
  
  def compositionType
    if self.attributes["compositionType"].present?
      return @compositionType ||= CompositionType.find(self.attributes["compositionType"]["objectId"])
    end
  end
  
  def instrumentation
    if self.attributes["instrumentation"].present?
      return @instrumentation ||= Instrumentation.find(self.attributes["instrumentation"]["objectId"])
    end
  end
  
end
