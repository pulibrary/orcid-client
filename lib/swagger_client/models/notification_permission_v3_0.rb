=begin
#ORCID Member

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module SwaggerClient
  class NotificationPermissionV30
    attr_accessor :put_code

    attr_accessor :notification_type

    attr_accessor :authorization_url

    attr_accessor :notification_subject

    attr_accessor :notification_intro

    attr_accessor :items

    attr_accessor :created_date

    attr_accessor :sent_date

    attr_accessor :read_date

    attr_accessor :actioned_date

    attr_accessor :archived_date

    attr_accessor :source

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value.downcase
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value.downcase)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'put_code' => :'put-code',
        :'notification_type' => :'notification-type',
        :'authorization_url' => :'authorization-url',
        :'notification_subject' => :'notification-subject',
        :'notification_intro' => :'notification-intro',
        :'items' => :'items',
        :'created_date' => :'created-date',
        :'sent_date' => :'sent-date',
        :'read_date' => :'read-date',
        :'actioned_date' => :'actioned-date',
        :'archived_date' => :'archived-date',
        :'source' => :'source'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'put_code' => :'Integer',
        :'notification_type' => :'String',
        :'authorization_url' => :'AuthorizationUrlV30',
        :'notification_subject' => :'String',
        :'notification_intro' => :'String',
        :'items' => :'ItemsV30',
        :'created_date' => :'DateTime',
        :'sent_date' => :'DateTime',
        :'read_date' => :'DateTime',
        :'actioned_date' => :'DateTime',
        :'archived_date' => :'DateTime',
        :'source' => :'SourceV30'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'put-code')
        self.put_code = attributes[:'put-code']
      end

      if attributes.has_key?(:'notification-type')
        self.notification_type = attributes[:'notification-type']
      end

      if attributes.has_key?(:'authorization-url')
        self.authorization_url = attributes[:'authorization-url']
      end

      if attributes.has_key?(:'notification-subject')
        self.notification_subject = attributes[:'notification-subject']
      end

      if attributes.has_key?(:'notification-intro')
        self.notification_intro = attributes[:'notification-intro']
      end

      if attributes.has_key?(:'items')
        self.items = attributes[:'items']
      end

      if attributes.has_key?(:'created-date')
        self.created_date = attributes[:'created-date']
      end

      if attributes.has_key?(:'sent-date')
        self.sent_date = attributes[:'sent-date']
      end

      if attributes.has_key?(:'read-date')
        self.read_date = attributes[:'read-date']
      end

      if attributes.has_key?(:'actioned-date')
        self.actioned_date = attributes[:'actioned-date']
      end

      if attributes.has_key?(:'archived-date')
        self.archived_date = attributes[:'archived-date']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @notification_type.nil?
        invalid_properties.push('invalid value for "notification_type", notification_type cannot be nil.')
      end

      if @authorization_url.nil?
        invalid_properties.push('invalid value for "authorization_url", authorization_url cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @notification_type.nil?
      notification_type_validator = EnumAttributeValidator.new('String', ['CUSTOM', 'INSTITUTIONAL_CONNECTION', 'PERMISSION', 'AMENDED', 'SERVICE_ANNOUNCEMENT', 'ADMINISTRATIVE', 'TIP', 'FIND_MY_STUFF'])
      return false unless notification_type_validator.valid?(@notification_type)
      return false if @authorization_url.nil?
      return false if @items.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notification_type Object to be assigned
    def notification_type=(notification_type)
      validator = EnumAttributeValidator.new('String', ['CUSTOM', 'INSTITUTIONAL_CONNECTION', 'PERMISSION', 'AMENDED', 'SERVICE_ANNOUNCEMENT', 'ADMINISTRATIVE', 'TIP', 'FIND_MY_STUFF'])
      unless validator.valid?(notification_type)
        fail ArgumentError, 'invalid value for "notification_type", must be one of #{validator.allowable_values}.'
      end
      @notification_type = notification_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          put_code == o.put_code &&
          notification_type == o.notification_type &&
          authorization_url == o.authorization_url &&
          notification_subject == o.notification_subject &&
          notification_intro == o.notification_intro &&
          items == o.items &&
          created_date == o.created_date &&
          sent_date == o.sent_date &&
          read_date == o.read_date &&
          actioned_date == o.actioned_date &&
          archived_date == o.archived_date &&
          source == o.source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [put_code, notification_type, authorization_url, notification_subject, notification_intro, items, created_date, sent_date, read_date, actioned_date, archived_date, source].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    rescue
      return nil
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
