clc
clear

BusList = TerminalListSearch;

BusNetworkList = cell(0);


for i = 1:size(BusList,1)
    
    TempID = BusList(i);
    
    
    
    TempList = SearchBuslist(TempID);
    if(size(TempList,1)~=0)
        
        if(size(TempList,1)>=size(BusNetworkList,1))
            BusNetworkList{size(TempList,1),i} = [];
            
        else
            TempList{size(BusNetworkList,1),1} = [];
            
            
        end
    
   
    
    BusNetworkList{:,i} = TempList;
    end
    
     disp(i)
end

