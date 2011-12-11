module CucumberPuppet::Helpers
  def file(name)
    catalog_resources.each do |resource|
      return resource if resource.type == 'File' and resource.title == name
    end
  end

  def packages
    packages = catalog_resources.map do |resource|
      resource if resource.type == 'Package'
    end
    packages.compact
  end
end
