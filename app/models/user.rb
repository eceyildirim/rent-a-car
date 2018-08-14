class User < ApplicationRecord
	validates :email, absense: true, on: :update

	validates :user_name, exclusion: {in: %w(admin administrator supervisor)}


	EPOSTA_REGEX = /\A([A-Z0-9\.\]+)@([A-Z0-9\-]+)\.([A-Z]+)\.?([A-Z]+)\Z/İ
	validates :eposta , format: {with: EPOSTA_REGEX}


validates :terms_of_service, acceptance:{accept: 'evet'}

validates :email, confirmation: true
validates :email_confirmation, presence: true

end
