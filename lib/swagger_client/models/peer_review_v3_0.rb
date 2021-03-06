=begin
#ORCID Member

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module SwaggerClient
  class PeerReviewV30
    attr_accessor :created_date

    attr_accessor :last_modified_date

    attr_accessor :source

    attr_accessor :reviewer_role

    attr_accessor :review_identifiers

    attr_accessor :review_url

    attr_accessor :review_type

    attr_accessor :review_completion_date

    attr_accessor :review_group_id

    attr_accessor :subject_external_identifier

    attr_accessor :subject_container_name

    attr_accessor :subject_type

    attr_accessor :subject_name

    attr_accessor :subject_url

    attr_accessor :convening_organization

    attr_accessor :visibility

    attr_accessor :put_code

    attr_accessor :path

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
        :'reviewer_role' => :'reviewer-role',
        :'review_identifiers' => :'review-identifiers',
        :'review_url' => :'review-url',
        :'review_type' => :'review-type',
        :'review_completion_date' => :'review-completion-date',
        :'review_group_id' => :'review-group-id',
        :'subject_external_identifier' => :'subject-external-identifier',
        :'subject_container_name' => :'subject-container-name',
        :'subject_type' => :'subject-type',
        :'subject_name' => :'subject-name',
        :'subject_url' => :'subject-url',
        :'convening_organization' => :'convening-organization',
        :'visibility' => :'visibility',
        :'put_code' => :'put-code',
        :'path' => :'path'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_date' => :'CreatedDateV30',
        :'last_modified_date' => :'LastModifiedDateV30',
        :'source' => :'SourceV30',
        :'reviewer_role' => :'String',
        :'review_identifiers' => :'ExternalIDsV30',
        :'review_url' => :'UrlV30',
        :'review_type' => :'String',
        :'review_completion_date' => :'FuzzyDateV30',
        :'review_group_id' => :'String',
        :'subject_external_identifier' => :'ExternalIDV30',
        :'subject_container_name' => :'TitleV30',
        :'subject_type' => :'String',
        :'subject_name' => :'SubjectNameV30',
        :'subject_url' => :'UrlV30',
        :'convening_organization' => :'OrganizationV30',
        :'visibility' => :'String',
        :'put_code' => :'Integer',
        :'path' => :'String'
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

      if attributes.has_key?(:'reviewer-role')
        self.reviewer_role = attributes[:'reviewer-role']
      end

      if attributes.has_key?(:'review-identifiers')
        self.review_identifiers = attributes[:'review-identifiers']
      end

      if attributes.has_key?(:'review-url')
        self.review_url = attributes[:'review-url']
      end

      if attributes.has_key?(:'review-type')
        self.review_type = attributes[:'review-type']
      end

      if attributes.has_key?(:'review-completion-date')
        self.review_completion_date = attributes[:'review-completion-date']
      end

      if attributes.has_key?(:'review-group-id')
        self.review_group_id = attributes[:'review-group-id']
      end

      if attributes.has_key?(:'subject-external-identifier')
        self.subject_external_identifier = attributes[:'subject-external-identifier']
      end

      if attributes.has_key?(:'subject-container-name')
        self.subject_container_name = attributes[:'subject-container-name']
      end

      if attributes.has_key?(:'subject-type')
        self.subject_type = attributes[:'subject-type']
      end

      if attributes.has_key?(:'subject-name')
        self.subject_name = attributes[:'subject-name']
      end

      if attributes.has_key?(:'subject-url')
        self.subject_url = attributes[:'subject-url']
      end

      if attributes.has_key?(:'convening-organization')
        self.convening_organization = attributes[:'convening-organization']
      end

      if attributes.has_key?(:'visibility')
        self.visibility = attributes[:'visibility']
      end

      if attributes.has_key?(:'put-code')
        self.put_code = attributes[:'put-code']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @review_group_id.nil?
        invalid_properties.push('invalid value for "review_group_id", review_group_id cannot be nil.')
      end

      if @convening_organization.nil?
        invalid_properties.push('invalid value for "convening_organization", convening_organization cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      reviewer_role_validator = EnumAttributeValidator.new('String', ['REVIEWER', 'EDITOR', 'MEMBER', 'CHAIR', 'ORGANIZER'])
      return false unless reviewer_role_validator.valid?(@reviewer_role)
      review_type_validator = EnumAttributeValidator.new('String', ['REVIEW', 'EVALUATION'])
      return false unless review_type_validator.valid?(@review_type)
      return false if @review_group_id.nil?
      subject_type_validator = EnumAttributeValidator.new('String', ['ARTISTIC_PERFORMANCE', 'BOOK_CHAPTER', 'BOOK_REVIEW', 'BOOK', 'CONFERENCE_ABSTRACT', 'CONFERENCE_PAPER', 'CONFERENCE_POSTER', 'DATA_SET', 'DICTIONARY_ENTRY', 'DISCLOSURE', 'DISSERTATION_THESIS', 'EDITED_BOOK', 'ENCYCLOPEDIA_ENTRY', 'INVENTION', 'JOURNAL_ARTICLE', 'JOURNAL_ISSUE', 'LECTURE_SPEECH', 'LICENSE', 'MAGAZINE_ARTICLE', 'MANUAL', 'NEWSLETTER_ARTICLE', 'NEWSPAPER_ARTICLE', 'ONLINE_RESOURCE', 'OTHER', 'PATENT', 'REGISTERED_COPYRIGHT', 'REPORT', 'RESEARCH_TECHNIQUE', 'RESEARCH_TOOL', 'SOFTWARE', 'SPIN_OFF_COMPANY', 'STANDARDS_AND_POLICY', 'SUPERVISED_STUDENT_PUBLICATION', 'TECHNICAL_STANDARD', 'TEST', 'TRADEMARK', 'TRANSLATION', 'WEBSITE', 'WORKING_PAPER', 'GRANT', 'CONTRACT', 'AWARD', 'SALARY_AWARD', 'RESEARCH_RESOURCE_PROPOSAL', 'UNDEFINED'])
      return false unless subject_type_validator.valid?(@subject_type)
      return false if @convening_organization.nil?
      visibility_validator = EnumAttributeValidator.new('String', ['LIMITED', 'REGISTERED_ONLY', 'PUBLIC', 'PRIVATE'])
      return false unless visibility_validator.valid?(@visibility)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reviewer_role Object to be assigned
    def reviewer_role=(reviewer_role)
      validator = EnumAttributeValidator.new('String', ['REVIEWER', 'EDITOR', 'MEMBER', 'CHAIR', 'ORGANIZER'])
      unless validator.valid?(reviewer_role)
        fail ArgumentError, 'invalid value for "reviewer_role", must be one of #{validator.allowable_values}.'
      end
      @reviewer_role = reviewer_role
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] review_type Object to be assigned
    def review_type=(review_type)
      validator = EnumAttributeValidator.new('String', ['REVIEW', 'EVALUATION'])
      unless validator.valid?(review_type)
        fail ArgumentError, 'invalid value for "review_type", must be one of #{validator.allowable_values}.'
      end
      @review_type = review_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subject_type Object to be assigned
    def subject_type=(subject_type)
      validator = EnumAttributeValidator.new('String', ['ARTISTIC_PERFORMANCE', 'BOOK_CHAPTER', 'BOOK_REVIEW', 'BOOK', 'CONFERENCE_ABSTRACT', 'CONFERENCE_PAPER', 'CONFERENCE_POSTER', 'DATA_SET', 'DICTIONARY_ENTRY', 'DISCLOSURE', 'DISSERTATION_THESIS', 'EDITED_BOOK', 'ENCYCLOPEDIA_ENTRY', 'INVENTION', 'JOURNAL_ARTICLE', 'JOURNAL_ISSUE', 'LECTURE_SPEECH', 'LICENSE', 'MAGAZINE_ARTICLE', 'MANUAL', 'NEWSLETTER_ARTICLE', 'NEWSPAPER_ARTICLE', 'ONLINE_RESOURCE', 'OTHER', 'PATENT', 'REGISTERED_COPYRIGHT', 'REPORT', 'RESEARCH_TECHNIQUE', 'RESEARCH_TOOL', 'SOFTWARE', 'SPIN_OFF_COMPANY', 'STANDARDS_AND_POLICY', 'SUPERVISED_STUDENT_PUBLICATION', 'TECHNICAL_STANDARD', 'TEST', 'TRADEMARK', 'TRANSLATION', 'WEBSITE', 'WORKING_PAPER', 'GRANT', 'CONTRACT', 'AWARD', 'SALARY_AWARD', 'RESEARCH_RESOURCE_PROPOSAL', 'UNDEFINED'])
      unless validator.valid?(subject_type)
        fail ArgumentError, 'invalid value for "subject_type", must be one of #{validator.allowable_values}.'
      end
      @subject_type = subject_type
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
          reviewer_role == o.reviewer_role &&
          review_identifiers == o.review_identifiers &&
          review_url == o.review_url &&
          review_type == o.review_type &&
          review_completion_date == o.review_completion_date &&
          review_group_id == o.review_group_id &&
          subject_external_identifier == o.subject_external_identifier &&
          subject_container_name == o.subject_container_name &&
          subject_type == o.subject_type &&
          subject_name == o.subject_name &&
          subject_url == o.subject_url &&
          convening_organization == o.convening_organization &&
          visibility == o.visibility &&
          put_code == o.put_code &&
          path == o.path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created_date, last_modified_date, source, reviewer_role, review_identifiers, review_url, review_type, review_completion_date, review_group_id, subject_external_identifier, subject_container_name, subject_type, subject_name, subject_url, convening_organization, visibility, put_code, path].hash
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
