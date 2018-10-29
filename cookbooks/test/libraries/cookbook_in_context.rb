def cookbook_in_context?(cookbook_name, cookbook_version)
    cb_collection = run_context.cookbook_collection

    ret_value = FalseClass
    puts "cb_collection: #{cb_collection}"

    if cb_collection.include?(cookbook_name)
        puts "cookbook: #{cookbook_name} is in the context"
        cb_version = run_context.cookbook_collection[cookbook_name].version
        puts "cb_version: #{cb_version}"

        if cb_version == cookbook_version
            puts "Congrats, the cookbook: #{cookbook_name} at version: #{cookbook_version} is in the context"
            ret_value = TrueClass
        else
            puts "cookbook: #{cookbook_name} is in the context, but not at version: #{cookbook_version}, instead it is: #{cb_version}"
        end
    else
        puts "cookbook provided: #{cookbook_name} is not in the context"
    end

    return ret_value
end