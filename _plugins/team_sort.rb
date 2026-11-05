module TeamSort
  def sort_by_surname(members)
    Array(members).sort_by do |member|
      name = member['name'].to_s.downcase.strip
      [name.split.last.to_s, name]
    end
  end
end

Liquid::Template.register_filter(TeamSort)
