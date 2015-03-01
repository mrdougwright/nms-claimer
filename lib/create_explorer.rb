module CreateExplorer
  def self.find_or_create(params)
    name = params.fetch(:name){ false }
    email = params.fetch(:email){ false }
    fail "missing params => :name and/or :email" unless (name && email)
    Explorer.where("lower(email) = ?", email.downcase).first ||
      Explorer.create({name: name, email: email})
  end
end
