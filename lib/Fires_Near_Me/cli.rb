require 'pry'
class FiresNearMe::CLI

  @@firesHash = {
    first:  {
      incident:     "Blenheim Town View HR",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    },
    second:  {
      incident:     "Boggy Swamp stage 2 HR",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    },
    third:  {
      incident:     "Brittle Jack Rd, Oconnell",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    },
    fourth:  {
      incident:     "Bull Flat",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    },
    fifth:  {
      incident:     "Bulls Head HR",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    },
    sixth:  {
      incident:     "Burgess HR",
      :"alert level" =>  "Advice",
      location:     "Blenheim State Forest",
      council:      "Oberon",
      status:       "Under control",
      type:         "Hazard Reduction",
      size:         "118 ha",
      agency:       "Forest Corporation of NSW",
      :"last updated" => "24 Apr 2016 14:30"
    }
  }


  def call
      puts "Displays all bush fires and grass fires attended by fire services & NSW RFS volunteers in New South Wales, Australia"
      list_incidents
      menu
  end

  def list_incidents

    puts <<-DOC.gsub /^\s*/,''
      Incident Name & Alert Level given below for the last 10 updated sites
      1. Blenheim Town View HR - Advice
      2. Boggy Swamp stage 2 HR - Advice
      3. Brittle Jack Rd, Oconnell - Advice
      4. Bull Flat - Advice
      5. Bulls Head HR - Advice
      6. Burgess HR	 - Advice
      7. FCNSW Ballengarra 7-13 HR - Advice
      8. FCNSW Ingalba 469,472,478,479 HR - Advice
      9. FCNSW Lansdowne 196-212 HR - Advice
     10. FCNSW Yarrat 72-74 HR - Advice
    DOC
  end

  def menu
    puts "Please press any number between 1 - 10 to get more information about the sites or type exit to Exit."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
          if input != "exit" && input.to_i.between?(1,10)
          #  binding.pry
          puts "--        --        --        --        --        --        --        --"
             @@firesHash.values[input.to_i - 1].each do |k, v|
               puts "#{k.to_s.capitalize} - #{v} "
             end
          end
          puts
          puts "--        --        --        --        --        --        --        --"
          puts
          list_incidents
          puts "Please press any number between 1 - 10 to get more information about the sites or type exit to Exit."
    end
  end


end
