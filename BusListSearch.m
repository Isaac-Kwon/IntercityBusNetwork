function ResultArray = BusListSearch

key = APIKEY;
searchURL = 'http://openapi.tago.go.kr/openapi/service/SuburbsBusInfoService/getSuberbsBusTrminlList?ServiceKey=';

searchURL = [searchURL key '&numOfRows=999&pageSize=999&pageNo=1&startPage=1'];
XMLFile = xmlread(char(searchURL));

list = XMLFile.getElementsByTagName('item');
Routelist = 0;

numlist = 1;

Routelist = cell(list.getLength,1);

for rownum = 0:list.getLength-1
    ele = list.item(rownum).getElementsByTagName('terminalid');
    Routelist(rownum+1,numlist) = ele.item(0).getFirstChild.getData;
end

ResultArray = Routelist;

end


