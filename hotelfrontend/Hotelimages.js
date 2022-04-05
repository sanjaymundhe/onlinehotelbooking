import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';


export default function Hotelimages() {

    const      [image1, setImage1] = useState("");
    const      [file, setFile] = useState("");
    const      [hotelid, setHotelid] = useState("");

   /* function hotelState(){
      setHotelid(JSON.parse(localStorage.getItem("loggedhotel")).hotelid)
    }*/

  function upload(ev){

    alert("hi");

    ev.preventDefault();
    setHotelid(JSON.parse(localStorage.getItem("loggedhotel")).hotelid)
    
    //console.log(firstName);
    console.log(hotelid);

    const reqData = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          file:file
           
        })
    };

    fetch("http://localhost:8080/images?hotelid="+hotelid,reqData)
    //.then(resp => resp.json())
    //.then(data => this.setState({st: data, success: true}));
    .then(resp=>{if(resp.status==200)
                {
                  console.log("ok");
                }

                else
                    console.log("failed");  })







  }



    return(

        <div>
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="/">Online Hotel Booking System</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/login">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/register">Register</a>
        </li>
       
      </ul>
      
    </div>
  </div>
</nav>
<div><h3>Step 2: Upload Hotel Image</h3></div>
<form onSubmit={upload} enctype="multipart/form-data">
        <div className='mb-3'>
      
            <label htmlFor='image1'>Upload Hotel Image  </label>
            <input
              className='form-control'
              placeholder='image1'
              type='file'
              name='file'
              noValidate
              onChange={(e) => setFile(e.target.value)}
            />
          </div>

          </form> 

          {/*<div className='mb-3'>
            <label htmlFor='image2'>Upload Hotel Image 2 </label>
            <input
              className='form-control'
              placeholder='image2'
              type='file'
              name='image2'
              noValidate
              onChange={(e) => setImage1(e.target.value)}
            />
    </div>*/}

    <div className='mb-3'>
            <button type='submit' onClick={upload}>Add Hotel</button>
          </div>
    </div>
    )
}