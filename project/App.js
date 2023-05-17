import React, { createContext, useEffect, useState } from 'react';
import './App.css';
import { BrowserRouter, Route, Routes} from 'react-router-dom';
import NavBar from './components/Navbar/NavBar';
import Footer from './components/Footer/Footer';
import Alumni from './components/Alumni/Alumni';
import Projects from './components/Projects/Projects';
import Community from './components/community/Community';
import EventsA from './components/community/EventsA';
import SignUp from './components/signup/signup';
import LoginForm from './components/login/loginForm';
import Home from './components/Home/Home';
import Search from './components/Search/Search';
import Dashboard from './components/Dashboard/Dashboard'
import DetailForm from './components/DetailForm/DetailForm';
import CreateProfile from './components/Profile/CreateProfile'


export const AppContext = createContext(null)

export default function App() {
  const [userSignedIn, setUserSignedIn] = useState(false);
 

  useEffect(()=>{
    fetch('/me')
    .then((res)=>{
      if(res.ok){
        
        res.json().then((user) => {
          setUserSignedIn(user)
        })
      }
    })
  },[])

  return (
    <BrowserRouter>
      <NavBar />
      <Routes>
        <Route path='/alumni' element={<Alumni />} />
        <Route path='/projects' element={<Projects />} />
        <Route path='/' element={<Home />}/>
        <Route path='/signup' element={< SignUp setUserSignedIn={setUserSignedIn} />} />
        <Route path='/login' element={<LoginForm userSignedIn={userSignedIn} setUserSignedIn={setUserSignedIn} />} />
        <Route path='/community' element={<Community />} />
        <Route path='/community/eventsa' element={<EventsA />} />  
        <Route path='/search-alumni' element={<Search />} />
        <Route path='/dashboard' element={<Dashboard/>} />
        <Route path='/details' element={<DetailForm />} />
        <Route path='/create profile' element={<CreateProfile/>} /> 
      </Routes>
    <Footer />
    
    </BrowserRouter>
  );
}
