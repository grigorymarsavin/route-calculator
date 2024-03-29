module Packages
  class BaseQuery < ::BaseQuery
    def base_relation
      if current_user.is_admin
        Package.where(organisation_id: current_user.organisation_id)
      else
        current_user.packages
      end
    end
  end
end
