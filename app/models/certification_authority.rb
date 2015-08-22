class CertificationAuthority < ActiveRecord::Base
  belongs_to :cert_authority_type
  belongs_to :city
end
