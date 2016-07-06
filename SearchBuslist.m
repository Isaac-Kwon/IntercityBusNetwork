 function BUSlist = SearchBuslist(STOPID)

key = APIKEY;

searchURL = 'http://openapi.tago.go.kr/openapi/service/SuburbsBusInfoService/getTrminlAcctoSuberbsBusInfo?ServiceKey=';

date = '20160707';

searchURL = [searchURL key '&terminalId=' cellstr(STOPID) '&depPlandTime=' date '&numOfRows=999&pageSize=999&pageNo=1&startPage=1' ];

XMLFile = xmlread(strjoin(searchURL,''));

list = XMLFile.getElementsByTagName('item');

numlist = 1;

BUSlist = cell(list.getLength,numlist);%cell(list.getLength,numlist);

for rownum = 0:list.getLength-1
    
    ele = list.item(rownum).getElementsByTagName('routeid');
    k = ele.item(0).getFirstChild.getData;
    
    BUSlist(rownum+1,1) = k;
    
end

%searchURL

end

