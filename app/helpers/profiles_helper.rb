module ProfilesHelper

    def get_date_in_month_year_format(date)
        if date.nil?
            return ""
        end
        date.strftime("%b %Y")
    end

    def update_array_attributes_in_params(params)
        params[:career_highlights] = get_array_from_comma_separated_string(params[:career_highlights])
        params[:primary_skills] = get_array_from_comma_separated_string(params[:primary_skills])
        params
    end

    private

    def concat_str_with_comma(*array_of_str)
        if array_of_str.nil? or array_of_str.length == 0
            return ""
        end
        sanitized_array = array_of_str.compact.split("").flatten # removes nil and ""
        sanitized_array.join(',')
    end

    def get_array_from_comma_separated_string(str)
        str.strip.split(',')
    end


end
