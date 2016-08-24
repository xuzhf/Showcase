package com.smartgwt.sample.showcase.client.grid;

import com.smartgwt.client.types.Alignment;
import com.smartgwt.client.types.GroupStartOpen;
import com.smartgwt.client.types.ListGridFieldType;
import com.smartgwt.client.widgets.Canvas;
import com.smartgwt.client.widgets.IButton;
import com.smartgwt.client.widgets.events.ClickEvent;
import com.smartgwt.client.widgets.events.ClickHandler;
import com.smartgwt.client.widgets.grid.ListGrid;
import com.smartgwt.client.widgets.grid.ListGridField;
import com.smartgwt.client.widgets.layout.HLayout;
import com.smartgwt.client.widgets.layout.VLayout;
import com.smartgwt.sample.showcase.client.PanelFactory;
import com.smartgwt.sample.showcase.client.ShowcasePanel;
import com.smartgwt.sample.showcase.client.data.TestXmlDS;

public class TestSample extends ShowcasePanel {
    private static final String DESCRIPTION = "<p>测试的第一个页面</p>."; 
    private ListGrid countryGrid;

    public static class Factory implements PanelFactory {
        private String id;
        

        public ShowcasePanel create() {
        	TestSample panel = new TestSample();
            id = panel.getID();
            return panel;
        }

        public String getID() {
            return id;
        }

        public String getDescription() {
            return DESCRIPTION;
        }
    }

    public Canvas getViewPanel() {

        VLayout layout = new VLayout(15);

        TestXmlDS dataSource = TestXmlDS.getInstance();
        createCountryListGrid();
        countryGrid.setDataSource(dataSource);
        HLayout buttonLayout = new HLayout(15);

        IButton unGroupButton = new IButton("不分组");
        unGroupButton.addClickHandler(new ClickHandler() {
            public void onClick(ClickEvent event) {
                countryGrid.ungroup();
            }
        });


        IButton groupByButton = new IButton("按州分组");
        groupByButton.setWidth(140);
        groupByButton.addClickHandler(new ClickHandler() {
            public void onClick(ClickEvent event) {
                countryGrid.groupBy("continent");
            }
        });

        buttonLayout.addMember(unGroupButton);
        buttonLayout.addMember(groupByButton);
        
        layout.addMember(countryGrid);
        layout.addMember(buttonLayout);

        return layout;
    }
    
    private ListGrid createCountryListGrid() {
    	 countryGrid = new ListGrid();
         countryGrid.setCanEdit(true);

         countryGrid.setWidth(522);
         countryGrid.setHeight(224);
         countryGrid.setShowAllRecords(true);

         countryGrid.setID("countryList");
         countryGrid.setGroupStartOpen(GroupStartOpen.ALL);
         countryGrid.setGroupByField("continent");        

         ListGridField countryCodeField = new ListGridField("countryCode", "Flag", 40);
         countryCodeField.setAlign(Alignment.CENTER);
         countryCodeField.setType(ListGridFieldType.IMAGE);
         countryCodeField.setImageURLPrefix("flags/16/");
         countryCodeField.setImageURLSuffix(".png");
         countryCodeField.setCanEdit(false);

         ListGridField nameField = new ListGridField("国家");

         ListGridField governmentField = new ListGridField("government");
         ListGridField continentField = new ListGridField("continent");
         countryGrid.setFields(nameField, governmentField, continentField, countryCodeField);

         countryGrid.setAutoFetchData(true);

        return countryGrid;
    }

    public String getIntro() {
        return DESCRIPTION;
    }
}
