=begin
#ORCID Member

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module SwaggerClient
  class PersonExternalIdentifierV30
    attr_accessor :created_date

    attr_accessor :last_modified_date

    attr_accessor :source

    attr_accessor :external_id_type

    attr_accessor :external_id_value

    attr_accessor :external_id_url

    attr_accessor :external_id_relationship

    attr_accessor :visibility

    attr_accessor :path

    attr_accessor :put_code

    attr_accessor :display_index

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
        :'created_date' => :'created-date',
        :'last_modified_date' => :'last-modified-date',
        :'source' => :'source',
        :'external_id_type' => :'external-id-type',
        :'external_id_value' => :'external-id-value',
        :'external_id_url' => :'external-id-url',
        :'external_id_relationship' => :'external-id-relationship',
        :'visibility' => :'visibility',
        :'path' => :'path',
        :'put_code' => :'put-code',
        :'display_index' => :'display-index'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_date' => :'CreatedDateV30',
        :'last_modified_date' => :'LastModifiedDateV30',
        :'source' => :'SourceV30',
        :'external_id_type' => :'String',
        :'external_id_value' => :'String',
        :'external_id_url' => :'UrlV30',
        :'external_id_relationship' => :'String',
        :'visibility' => :'String',
        :'path' => :'String',
        :'put_code' => :'Integer',
        :'display_index' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'created-date')
        self.created_date = attributes[:'created-date']
      end

      if attributes.has_key?(:'last-modified-date')
        self.last_modified_date = attributes[:'last-modified-date']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'external-id-type')
        self.external_id_type = attributes[:'external-id-type']
      end

      if attributes.has_key?(:'external-id-value')
        self.external_id_value = attributes[:'external-id-value']
      end

      if attributes.has_key?(:'external-id-url')
        self.external_id_url = attributes[:'external-id-url']
      end

      if attributes.has_key?(:'external-id-relationship')
        self.external_id_relationship = attributes[:'external-id-relationship']
      end

      if attributes.has_key?(:'visibility')
        self.visibility = attributes[:'visibility']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'put-code')
        self.put_code = attributes[:'put-code']
      end

      if attributes.has_key?(:'display-index')
        self.display_index = attributes[:'display-index']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @external_id_type.nil?
        invalid_properties.push('invalid value for "external_id_type", external_id_type cannot be nil.')
      end

      if @external_id_value.nil?
        invalid_properties.push('invalid value for "external_id_value", external_id_value cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @external_id_type.nil?
      return false if @external_id_value.nil?
      external_id_relationship_validator = EnumAttributeValidator.new('String', ['PART_OF', 'SELF', 'VERSION_OF'])
      return false unless external_id_relationship_validator.valid?(@external_id_relationship)
      visibility_validator = EnumAttributeValidator.new('String', ['LIMITED', 'REGISTERED_ONLY', 'PUBLIC', 'PRIVATE'])
      return false unless visibility_validator.valid?(@visibility)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_id_relationship Object to be assigned
    def external_id_relationship=(external_id_relationship)
      validator = EnumAttributeValidator.new('String', ['PART_OF', 'SELF', 'VERSION_OF'])
      unless validator.valid?(external_id_relationship)
        fail ArgumentError, 'invalid value for "external_id_relationship", must be one of #{validator.allowable_values}.'
      end
      @external_id_relationship = external_id_relationship
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visibility Object to be assigned
    def visibility=(visibility)
      validator = EnumAttributeValidator.new('String', ['LIMITED', 'REGISTERED_ONLY', 'PUBLIC', 'PRIVATE'])
      unless validator.valid?(visibility)
        fail ArgumentError, 'invalid value for "visibility", must be one of #{validator.allowable_values}.'
      end
      @visibility = visibility
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_date == o.created_date &&
          last_modified_date == o.last_modified_date &&
          source == o.source &&
          external_id_type == o.external_id_type &&
          external_id_value == o.external_id_value &&
          external_id_url == o.external_id_url &&
          external_id_relationship == o.external_id_relationship &&
          visibility == o.visibility &&
          path == o.path &&
          put_code == o.put_code &&
          display_index == o.display_index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created_date, last_modified_date, source, external_id_type, external_id_value, external_id_url, external_id_relationship, visibility, path, put_code, display_index].hash
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
