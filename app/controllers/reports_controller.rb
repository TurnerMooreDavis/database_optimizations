class ReportsController < ApplicationController
  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = Hit.where(subject_id: Gene.where(sequence_id: Sequence.where(assembly_id: @assembly.id))).order("percent_similarity DESC")
  end
  def welcome
    @data = params
    SendSequencesMailer.data.deliver_now
  end
end
