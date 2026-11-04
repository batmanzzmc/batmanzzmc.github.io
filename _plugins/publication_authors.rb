module PublicationAuthors
  # BibTeX can supply either "First Last" or "Last, First" names. Keep all
  # given names and contribution markers rather than using CSL abbreviations.
  def full_publication_authors(value)
    value.to_s.split(/\s+and\s+/).map do |author|
      parts = author.delete('{}').strip.split(/\s*,\s*/)
      case parts.length
      when 2 then "#{parts[1]} #{parts[0]}"
      when 3 then "#{parts[2]} #{parts[0]}, #{parts[1]}"
      else parts.first
      end
    end.join(', ')
  end
end

Liquid::Template.register_filter(PublicationAuthors)
