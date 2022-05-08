import xml.etree.ElementTree as ET
tree = ET.parse('template.xml')
root = tree.getroot()

root.findall("./")