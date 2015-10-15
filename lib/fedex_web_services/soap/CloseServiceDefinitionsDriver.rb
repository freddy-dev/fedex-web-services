# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.3)
require_relative 'CloseServiceDefinitions.rb'
require_relative 'CloseServiceDefinitionsMappingRegistry.rb'
require 'soap/rpc/driver'

module FedexWebServices::Soap::Close

class ClosePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://wsbeta.fedex.com:443/web-services/close"

  Methods = [
    [ "http://fedex.com/ws/close/v4/closeWithDocuments",
      "closeWithDocuments",
      [ [:in, "CloseWithDocumentsRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "CloseWithDocumentsRequest"]],
        [:out, "CloseWithDocumentsReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "CloseWithDocumentsReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/close/v4/smartPostClose",
      "smartPostClose",
      [ [:in, "SmartPostCloseRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "SmartPostCloseRequest"]],
        [:out, "SmartPostCloseReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "SmartPostCloseReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/close/v4/groundClose",
      "groundClose",
      [ [:in, "GroundCloseRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseRequest"]],
        [:out, "GroundCloseReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/close/v4/groundCloseWithDocuments",
      "groundCloseWithDocuments",
      [ [:in, "GroundCloseWithDocumentsRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseWithDocumentsRequest"]],
        [:out, "GroundCloseDocumentsReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseDocumentsReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/close/v4/reprintGroundCloseDocuments",
      "reprintGroundCloseDocuments",
      [ [:in, "ReprintGroundCloseDocumentsRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "ReprintGroundCloseDocumentsRequest"]],
        [:out, "GroundCloseDocumentsReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseDocumentsReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/close/v4/groundCloseReportsReprint",
      "groundCloseReportsReprint",
      [ [:in, "GroundCloseReportsReprintRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseReportsReprintRequest"]],
        [:out, "GroundCloseReportsReprintReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/close/v4", "GroundCloseReportsReprintReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = CloseServiceDefinitionsMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = CloseServiceDefinitionsMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end