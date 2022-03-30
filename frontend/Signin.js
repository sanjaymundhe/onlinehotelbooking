import React, { useState } from "react";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";
import "./Login.css";
import { useNavigate } from "react-router-dom";

export default function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [loginerror,setLoginerror]=useState("");
  
  

  let navigate=useNavigate();

  function validateForm() {
    return email.length > 0 && password.length > 0;
  }


 
  function handleSubmit(event) {
    event.preventDefault();
    const reqData = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            email: email,
            password:password,
           
        })
    };

    fetch("http://localhost:8080/login",reqData)
    .then(resp => resp.text())
    .then(data => {if(data.length!=0)
                    {
                    

                        const json=JSON.parse(data)
                        if(json.usertype=="customer")
                        {
                            //setCustomer(json);
                            //this.setState({customer:json})
                            //localStorage.setItem("loggedinuser",JSON.stringify(this.state.customer))
                           
                            navigate("/customerhome");
                            //useNavigate("/customerhome")
                            //this.props.navigate("/customerhome")
                           // navigate("http://localhost:3000/login")
                        }
                        if(json.usertype=="service")
                        {
                            //this.setState({service:json})
                            //localStorage.setItem("loggedinuser",JSON.stringify(this.state.service))
                            //this.props.history.push("/customerhome")
                        //this.setState({user:json.usertype})
                            navigate('/servicehome')

                        }
                        if(json.usertype=="admin")
                        {
                            //this.setState({admin:json})
                            //localStorage.setItem("loggedinuser",JSON.stringify(this.state.admin))
                            //this.props.history.push("/customerhome")
                        //this.setState({user:json.usertype})
                        navigate('/adminhome')


                        }
                        
                    }
                    else
                    {
                            //this.setState({loginerror:"Wrong email and password"})
                            setLoginerror("Wrong email and password")
                    }

        
    })
  }

  return (
    <div className="Login">
      <Form onSubmit={handleSubmit}>
        <Form.Group size="lg" controlId="email">
          <Form.Label>Email</Form.Label>
          <Form.Control
            autoFocus
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </Form.Group>
        <Form.Group size="lg" controlId="password">
          <Form.Label>Password</Form.Label>
          <Form.Control
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </Form.Group>
        <Button block size="lg" type="submit" disabled={!validateForm()}>
          Login
        </Button>
        <br/>
        <a href="/register">New User? Sign Up</a>
      </Form>
    </div>
  );
}