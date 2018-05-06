package java_dom_parser;

import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory; 
import javax.xml.parsers.ParserConfigurationException; 
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Document;
import org.w3c.dom.Element; 
import org.xml.sax.SAXException;

/*
 * references:
 * 
 * https://www.youtube.com/watch?v=HfGWVy-eMRc
 * 
 */

public class MyDomParser 
{

	public static void main(String[] args) 
	{
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try 
		{
			DocumentBuilder builder = factory.newDocumentBuilder();
			String xmlpath = "people.xml";
			Document document = builder.parse(xmlpath);
			
			String tagname = "person";
			NodeList personList =  document.getElementsByTagName(tagname);
			
			for(int i = 0; i < personList.getLength(); i++) 
			{
				Node p = personList.item(i);
				
				if(p.getNodeType() == Node.ELEMENT_NODE ) 
				{
					Element person = (Element)p;
					String id = person.getAttribute("id");
					NodeList nodeList =  person.getChildNodes();
					
					for(int j = 0; j < nodeList.getLength(); j++) 
					{
						Node n = nodeList.item(j);
						if(n.getNodeType() == Node.ELEMENT_NODE)
						{
							Element name = (Element)n;
							System.out.println("Person " + id + ":" + name.getTagName() + "=" + name.getTextContent());
							System.out.println(id);	
						}						
					}
					
					
				}
				
							
			}
		} 
		catch (ParserConfigurationException e)
		{
			e.printStackTrace();
		} 
		catch (SAXException e) 
		{
			e.printStackTrace();
		} 
		catch (IOException e) 
		{
			e.printStackTrace();
		}
	}
}
