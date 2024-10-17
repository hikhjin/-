SELECT ITEM_ID, ITEM_NAME, RARITY 
FROM ITEM_INFO 
WHERE ITEM_ID IN
(SELECT it.ITEM_ID 
FROM ITEM_INFO ii, ITEM_TREE it WHERE ii.ITEM_ID = it.PARENT_ITEM_ID AND RARITY = 'RARE')
ORDER BY ITEM_ID DESC;
