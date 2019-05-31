**HOT TO INSTALL APP**
--
     
* *Start app and build required Docker containers:*

        docker-compose up -d
      
* *Install all composer dependencies:*

        docker exec -it laravelvue_php composer install
        
* *Copy ``.env`` environment config file and set all required settings in it:*

        docker exec -it laravelvue_php cp .env.dist .env

* *Generate Laravel application key:*

        docker exec -it laravelvue_php php artisan key:generate
        
* *Run all required migrations:*

        docker exec -it laravelvue_php php artisan migrate
  
* *Install NodeJS dependencies and compile assets:*
    
        docker exec -it laravelvue_php  npm install
        docker exec -it laravelvue_php  npm run dev

* *Change permission for 'storage' folder:*
    
        docker exec -it laravel_api  chmod +x ./services/docker/set_storage_read_write_permissions.sh
        docker exec -it laravel_api  ./services/docker/set_storage_read_write_permissions.sh

App is available on ``8301`` port
--
    http://127.0.0.1:8301
    
#####In order to import some already predefined dummy data than use following dump:

    docker/mysql/discover_laravelvue.sql
