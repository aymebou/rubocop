# encoding: utf-8

module Rubocop
  module Cop
    class Offence
      attr_accessor :severity, :line_number, :message

      SEVERITIES = [:refactor, :convention, :warning, :error, :fatal]

      def initialize(severity, line_number, message)
        @severity = severity
        @line_number = line_number
        @message = message
      end

      def to_s
        sprintf("#{encode_severity}:%3d: #{message}", line_number)
      end

      def encode_severity
        @severity.to_s[0].upcase
      end
    end
  end
end
