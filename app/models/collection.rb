class Collection < ParseResource::Base
  fields :title, :opus, :name, :createdAt, :updatedAt
  
  def composer
    if self.attributes["composer"].present?
      return @composer ||= Composer.find(self.attributes["composer"]["objectId"])
    end
  end
  
end
