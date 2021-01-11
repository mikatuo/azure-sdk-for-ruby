# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # The domain JSON object required for domain creation or update.
    #
    class RuleUpdateParameters

      include MsRestAzure

      # @return [Integer] The order in which the rules are applied for the
      # endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order
      # will be applied before a rule with a greater order. Rule with order 0
      # is a special rule. It does not require any condition and actions listed
      # in it will always be applied.
      attr_accessor :order

      # @return [Array<DeliveryRuleCondition>] A list of conditions that must
      # be matched for the actions to be executed
      attr_accessor :conditions

      # @return [Array<DeliveryRuleAction>] A list of actions that are executed
      # when all the conditions of a rule are satisfied.
      attr_accessor :actions

      # @return [MatchProcessingBehavior] If this rule is a match should the
      # rules engine continue running the remaining rules or stop. If not
      # present, defaults to Continue. Possible values include: 'Continue',
      # 'Stop'
      attr_accessor :match_processing_behavior


      #
      # Mapper for RuleUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RuleUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RuleUpdateParameters',
            model_properties: {
              order: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.order',
                type: {
                  name: 'Number'
                }
              },
              conditions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.conditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeliveryRuleConditionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'name',
                        uber_parent: 'DeliveryRuleCondition',
                        class_name: 'DeliveryRuleCondition'
                      }
                  }
                }
              },
              actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeliveryRuleActionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'name',
                        uber_parent: 'DeliveryRuleAction',
                        class_name: 'DeliveryRuleAction'
                      }
                  }
                }
              },
              match_processing_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.matchProcessingBehavior',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
