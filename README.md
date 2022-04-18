# restaurant

<p>Here req.tx is requirement file where you can find all nacessary stuffs for this project. DB and POST-man collection is available here. </p>

Here I have used JWT token based authentication system.

Here 3 type users roles are available. 
1. Admin users 
2. Restaurants users
3. Employee users

Admin users:  Admin can create Restaurant. Ad.min user can create Employee. 
Restaurants users : Restaurants users can create menus.
Employee users: Employee users can vote.

Anybody can see today's menus list and view result.

API list : 
1. refresh-token
2. user-create (This API is use for only blank database)
3. employee-create (Auth token required.)
4. restaurant-create (Auth token required.)
5. menus-create (Auth token required.)
6. today-menu (Auth token required.)
7. result (Auth token required.)
8. vote (Auth token required.)
9. logout (Auth refresh token required.)

Install All required packages. 

<code>pip install -r req.txt </code>

