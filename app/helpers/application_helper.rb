module ApplicationHelper

  def group_names (user)
    return "None" if user.groups.empty?
    names_str = ""
    user.groups.each_with_index do |group, i|
      names_str << " " << group.name
      names_str << "," unless i == user.groups.size - 1
    end
    names_str
  end
end
