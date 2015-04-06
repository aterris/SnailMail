import Alamofire

class PostOffice {
    let postOfficeURL = "http://localhost:9292"
    
    func getMail() {
        let url = "\(postOfficeURL)/mail"
        
        Alamofire.request(.GET, url)
    }
    
    func sendMail() {
        let url = "\(postOfficeURL)/send"
        
        Alamofire.request(.POST, url)
    }
    
    func login() {
        let url = "\(postOfficeURL)/login"
        
        Alamofire.request(.POST, url)
    }
    
    func logout() {
        let url = "\(postOfficeURL)/logout"
        
        Alamofire.request(.POST, url)
    }
}