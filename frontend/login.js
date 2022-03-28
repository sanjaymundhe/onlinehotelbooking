import React from "react";

export default class Login extends React.Component{
    constructor(props){
        super(props)
        this.state={
            
            uid:"",
            
            pwd:"",
            errors:{
                uiderror:"",
                pwderror:""
            },
            uidvalid:false,
            pwdvalid:false,
            formvalid:false
            
        }
        this.routeChange = this.routeChange.bind(this);
    }
    handleInput=(ev)=>{
        const emailregexp = /^[A-Za-z0-9._-]{5,}@[A-Za-z0-9.]{5,12}\.[a-z]{2,3}$/;

        const nm = ev.target.name;
        const val = ev.target.value;
        let errors = this.state.errors;
        let uidflag = this.state.uidvalid;
        let pwdflag = this.state.pwdvalid;
        switch(nm)
        {
            case 'uid':
                if( !emailregexp.test(val) )
                {
                    errors.uiderror = "Email is invalid";
                    uidflag = false;
                }    
                else
                {
                    errors.uiderror = "";
                    uidflag=true;
                }    
                break;
            case 'pwd':
                if(val.length < 5)
                {
                    errors.pwderror = "Password too short";
                    pwdflag = false;
                }
                else
                {
                    errors.pwderror ="";
                    pwdflag= true;

                }
                break;    
        }
    
        this.setState({errors,[nm]: val,uidvalid: uidflag, pwdvalid: pwdflag} , ()=>{ this.setState({formvalid: this.state.uidvalid && this.state.pwdvalid})});
    }
   
    routeChange=(ev)=>{
        ev.preventDefault();
        console.log(this.state);
        const reqData = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                uid: this.state.uid,
                pwd:this.state.pwd,
               
            })
        };

        fetch("http://localhost:8080/register",reqData)
        //.then(resp => resp.json())
        //.then(data => this.setState({st: data, success: true}));
        .then(resp=>{if(resp.status==200)
                        console.log("success")
                    else
                        console.log("failed");  })

       
        
      }
    

    render(){
        return(
            <div className="container col-sm-6 bg-light mt-5 border border-dark border-5">
                <h3>Sign in</h3>
                  <form method="post" >
                      <div className="mb-1">
                  Enter Email Id : 
                    <input type="text" name="uid" value={this.state.uid}
                    onChange={this.handleInput} /> </div>{this.state.errors.uiderror}<br/>
                     
                    <div className="mb-3">
                    Enter Password : 
                    <input type="password" name="pwd" value={this.state.pwd}
                    onChange={this.handleInput} /> </div>{this.state.errors.pwderror}<br/>
                    
                     
                      <input type="submit" value="SUBMIT"  disabled={!this.state.formvalid} onClick={this.routeChange} className="btn btn-outline-primary float-left ml-4"/> 

                  
                  </form>
                  <a href="/register">New user Registration</a>
                  
                
                 
                 
            </div>
        )
    }
}