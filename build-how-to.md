Development notes for saving a theme as an add-on package and then cleaning up the extraneous xml that's in them. This should be scripted eventually.

if you are doing this visually, replace 
```

{
}
]]></LocalCSS>

```

with 
```
{}]]></LocalCSS>
```

## Remove Extraneous Objects from the **Portals** layout

There are two extra buttons in the Portal element, UUID: 47F1ED16-AADE-4EAA-9D1E-E47CDBED8664

UUIDs of the two extra button:

1. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[11]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[1]/Portal[1]/ObjectList[1]/LayoutObject[7]`
   1. Object UUID: `9CC3817A-1A42-4D53-ADF3-40F3F5E07A34`
2. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[11]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[1]/Portal[1]/ObjectList[1]/LayoutObject[6]`
   1.  Object UUID: `B2B9D275-B032-411D-A8F6-C4E658BD6ABB`

Change membercount attribute of Portal object to '5'

## Remove extraneous objects from the **Tabs** layout
   
Locate the first SlidePanel panel, UUID: B2C37ECE-46F7-4805-84F3-00F525D45B36. This is SlidePanel should have 14 member elements. Instead, we have 17. The last three created are actual duplicates of the button bar buttons. We want to remove them. 
   
1. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[10]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[3]/SlideControl[1]/ObjectList[1]/LayoutObject[1]/SlidePanel[1]/ObjectList[1]/LayoutObject[17]`
   1. Object UUID: `D778260F-FA1F-4269-93D0-622D64BA64B5`
2. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[10]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[3]/SlideControl[1]/ObjectList[1]/LayoutObject[1]/SlidePanel[1]/ObjectList[1]/LayoutObject[16]`
   1. Object UUID: `13C82E09-F6C7-4378-B3F2-74C04F6A0637`
3. XPath:`/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[10]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[3]/SlideControl[1]/ObjectList[1]/LayoutObject[1]/SlidePanel[1]/ObjectList[1]/LayoutObject[14]`
   1. Object UUID: `56F2A576-C993-423D-B68D-0C7D28D69D82`

Set the membercount attribute of the `B2C37ECE-46F7-4805-84F3-00F525D45B36` SlidePanel to `14`

This should object and it's enclosing children buttons should all be sitting happily within a SlidePanel object. Do not delete these.

## Remove Extraneous Objects from **List** layout

1. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[12]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[3]/Portal[1]/ObjectList[1]`
   1. Object UUID: `299056F3-2D15-46C5-AEC6-D2029846EE14`
2. XPath: `/FMAdd_on/Structure[1]/AddAction[1]/LayoutCatalog[1]/Layout[12]/PartsList[1]/Part[1]/ObjectList[1]/LayoutObject[3]/Portal[1]/ObjectList[1]/LayoutObject[3]`
   1. Object UUID: `786F6D8B-0F87-4F89-97B4-4C9046698698`
 
Change portal membercount attribute from 5 to 3
