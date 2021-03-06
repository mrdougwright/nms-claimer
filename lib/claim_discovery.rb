module ClaimDiscovery
  def self.create(params)
    name = params.fetch(:name){ false }
    explorer_id = params.fetch(:explorer_id){ false }
    fail "missing params => :name and/or :explorer_id" unless (name && explorer_id)
    Discovery.create({name: name, explorer_id: explorer_id})
  end
end