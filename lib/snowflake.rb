require 'securerandom'

module Snowflake
  def self.included(base)
    base.extend ClassMethods
  end

  def ensure_unique(name)
    begin
      self[name] = yield
    end while self.class.exists?(name => self[name])
  end

  module ClassMethods
    def snowflake(*args, &block)
      options = { :disable => false }
      options.merge!(args.pop) if args.last.kind_of? Hash
			
      unless options[:disable]
        args.each do |name|
          before_create do |record|
            if block
              record.ensure_unique(name, &block)
            else
              record.ensure_unique(name) do 
                SecureRandom.uuid
              end
            end
          end
        end
      end
    end
  end
end

class ActiveRecord::Base
  include Snowflake
end
