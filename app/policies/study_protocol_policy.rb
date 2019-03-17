class StudyProtocolPolicy < ApplicationPolicy
  def create?
    user.principal_investigator?
  end
end
