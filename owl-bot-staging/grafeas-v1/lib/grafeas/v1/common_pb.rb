# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/common.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/common.proto", :syntax => :proto3) do
    add_message "grafeas.v1.RelatedUrl" do
      optional :url, :string, 1
      optional :label, :string, 2
    end
    add_message "grafeas.v1.Signature" do
      optional :signature, :bytes, 1
      optional :public_key_id, :string, 2
    end
    add_message "grafeas.v1.Envelope" do
      optional :payload, :bytes, 1
      optional :payload_type, :string, 2
      repeated :signatures, :message, 3, "grafeas.v1.EnvelopeSignature"
    end
    add_message "grafeas.v1.EnvelopeSignature" do
      optional :sig, :bytes, 1
      optional :keyid, :string, 2
    end
    add_message "grafeas.v1.FileLocation" do
      optional :file_path, :string, 1
    end
    add_message "grafeas.v1.License" do
      optional :expression, :string, 1
      optional :comments, :string, 2
    end
    add_message "grafeas.v1.Digest" do
      optional :algo, :string, 1
      optional :digest_bytes, :bytes, 2
    end
    add_enum "grafeas.v1.NoteKind" do
      value :NOTE_KIND_UNSPECIFIED, 0
      value :VULNERABILITY, 1
      value :BUILD, 2
      value :IMAGE, 3
      value :PACKAGE, 4
      value :DEPLOYMENT, 5
      value :DISCOVERY, 6
      value :ATTESTATION, 7
      value :UPGRADE, 8
      value :COMPLIANCE, 9
      value :DSSE_ATTESTATION, 10
    end
  end
end

module Grafeas
  module V1
    RelatedUrl = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.RelatedUrl").msgclass
    Signature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Signature").msgclass
    Envelope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Envelope").msgclass
    EnvelopeSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.EnvelopeSignature").msgclass
    FileLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.FileLocation").msgclass
    License = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.License").msgclass
    Digest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Digest").msgclass
    NoteKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.NoteKind").enummodule
  end
end
