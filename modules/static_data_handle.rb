require_relative '../helper.rb'

module StaticDataHandle
  def list_genres
      @genres.each_with_index do |genre, index|
        puts "#{index}.Genre Name: #{genre.name}"
      end
    end

  def list_sources
      @sources.each_with_index do |source, index|
        puts "#{index}.Source Name: #{source.name}"
      end
    end

  def list_authors
      @authors.each_with_index do |author, index|
        puts "#{index}.author Name: #{author.first_name} #{author.last_name}"
      end
    end

  def list_labels
      @labels.each_with_index do |label, index|
        puts "#{index}.Label Title: #{label.title}, Color: #{label.color} "
      end
    end
end