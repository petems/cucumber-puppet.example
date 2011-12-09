module CucumberPuppet::Helpers
  def packages
    packages = catalog_resources.map do |resource|
      resource if resource.type == 'Package'
    end
    packages.compact
  end
end
