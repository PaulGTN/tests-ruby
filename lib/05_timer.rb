def time_string (a)
    Time.at(a).utc.strftime("%H:%M:%S")
end