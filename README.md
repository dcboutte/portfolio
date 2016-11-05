### Starting Local Server  

1) cd to the correct folder  
2) ```rackup -p 4567```  
3) In your browser, go to ```localhost:4567```  

### Deployment  

1) SSH to server  
2) kill unicorn process  
3) ```git pull origin master```  
4) start unicorn: ```unicorn -c unicorn.rb -E production -D```  
5) restart nginx: ```sudo service nginx restart```  
