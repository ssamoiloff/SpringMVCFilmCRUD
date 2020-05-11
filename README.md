# SpringMVCFilmCRUD
# CRUD Weekend Assignment

### Overview
This program is designed to allow a user to perform multiple functions on a database of information.  The user is provided with three button options on the home page: "Search By Film ID", "Create A Film", and "Search By Keyword". If the user chooses the first button, they are prompted to enter the ID number of a film.  If the user enters an invalid ID (a film does not exist with this ID) the user is informed of the error and can return to the main page or enter another ID.  The user then has the option to "Update" the information for that film, or delete it all together, or return to the "Main" page.   A message will be received if the process was successful, or if it could not be executed.  

If the user chooses to "Create a Film", a form is displayed with all the editable information for a film.  once submitted, a film ID will be generated for the film and it will be inserted into the database. This film can now be searched for in the database. There is a button to return back to the main screen.

If the user chooses to "Search by Keyword", they are prompted to enter a word that exists in the film title or description. Every film from within the database that matches the keyword in on of those fields will be returned. The user then has an option to either "Update" the information of that form or "Delete" that film all together.  A message will be received if the process was successful, or if it could not be executed.  



### Applications Used

 GitHub/git  
 Spring
 Java   
 Terminal
 SQL

### Lessons Learned

1. This was our first true experience with "paired programming" for a weekend project, with minimal guidance from staff.  Working with others with a deadline in mind added another factor to consider while approaching the project.  Considering the opinions of others and working to complete the assignment proved to be a challenge as well as a blessing.  Multiple times one member was able research certain topics while others worked to complete code for another aspect of the code.  Having multiple eyes looking at the same project ensured the group was staying on track.
2. Initially the team wanted to minimize JSPs.  This proved to cause more issues later on as the code became longer.  The team found it easier to separate functionality between multiple JSPs.  Code became cleaner and separating allowed ease of reference when trouble shooting.
3. The team ran into quite the problem while attempting to include multiple buttons on one form.  After much heartache, the team decided to create multiple forms and an additional JSP to overcome the issue.  This proved to test the patience of the team, but with perseverance, the team finally succeeded.  
