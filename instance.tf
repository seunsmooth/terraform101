module "spin_up_machine" {
    source =  "./mymodules"
    instance_count = 2
    modulescripts  = ["scripts/apache.sh","scripts/tomcat.sh"]
    node_name = ["Webstuff","Appstuff"] 
    environment = "dev" 
}
