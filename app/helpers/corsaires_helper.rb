module CorsairesHelper
  def to_show_if_not_nil( info = nil )
    if ( info != nil && info != "" )
      return info
    else
      return 'Non renseigné'
    end
  end

end
