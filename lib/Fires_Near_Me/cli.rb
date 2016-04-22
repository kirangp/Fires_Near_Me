class FiresNearMe::CLI
  
  def call
      puts "Displays all bush fires and grass fires attended by fire services & NSW RFS volunteers in New South Wales, Australia"
      list_incidents
      menu
  end
  
  def list_incidents
    
    puts <<DOC.gsub /^\s*/, ''
      Incident Name & Alert Level given below for the last 10 updated sites
      1. rockton203 - Advice
      2. Avon Dam Pile burn - Advice
      3. Blenheim Town View HR - Advice
      4. Boggy Swamp stage 2 HR - Advice
      5. Bondi SFAZ burn - Advice
      6. Brittle Jack Rd, Oconnel - Advice
      7. Bull Flat - Advice
      8. Burgess HR - Advice
      9. Dalmorton South HR - Advice
     10. Darks Common HR - Advice   
    DOC    
  end
    
  def menu
    puts "Please press any number between 1 - 10 to get more information about the sites or type exit to Exit."
    input = nil
    while input != "exit"
      input = gets.strip.downcase
    end   
  end
    
end