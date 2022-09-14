require_relative '../helper'

module StaticDataHandle
  def list_genres
    @genres.each_with_index do |genre, index|
      puts "#{index + 1}.Genre Name: #{genre.name}"
    end
  end

  def list_sources
    @sources.each_with_index do |source, index|
      puts "#{index + 1}.Source Name: #{source.name}"
    end
  end

  def list_authors
    @authors.each_with_index do |author, index|
      puts "#{index + 1}.Author Name: #{author.first_name} #{author.last_name}"
    end
  end

  def list_labels
    @labels.each_with_index do |label, index|
      puts "#{index + 1}.Label Title: #{label.title}, Color: #{label.color} "
    end
  end
end
