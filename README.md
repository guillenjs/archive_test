I have created this project to show how we could potentially create dynamic drop downs
for the new form using the data and ancestry that exist within the the ArchiveType model.

The way that I retrieve the data was by using an ajax get request by sending a value of static
drop down in the form. So for group I think we can keep that data static because it is always going to be the same. Once chosen we can send a get request to retrieve its children and we can do that for the second drop down as well. We will need an ArchiveType controller in order to be able to get data from archive type.
We can create a custom route to retrieve from the ArchiveType controller.

We also want to remeber that the ID we want to record for archivetype on the archive model is the most 
deeply nested descendent. This way we can look up the tree to retrieve its heirachy. The form can be dynamically created for the JSON data we need to collect but in this example it is static for now.

I wanted to show we can create multiple inputs and submit it to the controller using strong params. So please
reivew the ArchiveController in order to see how json data is white listed for the JSON field in order to submite it.
# archive_test
