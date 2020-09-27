import React from 'react'
import facebookImg from '../images/social/facebook-white.svg'
import instagramImg from '../images/social/instagram-white.svg'
import twitterImg from '../images/social/twitter-white.svg'

import appStore from '../images/store/app-store.svg'
import googlePlay from '../images/store/play-store.svg'
import microsoftStore from '../images/store/windows-store.svg'
const Footer = () => {
    return (
        <footer className="footer">
            <div className="container py-5">
                <nav className="py-3">
                <ul className="pl-0 pt-5">
                    <li className="homefootItem">Home |</li>
                    <li>Terms and conditions |</li>
                    <li>Privacy Policy  |</li>
                    <li>Collection Statement |</li>
                    <li>Help |</li>
                    <li>Manage Account |</li>
                </ul>
                <p>Copyright 2020 Coding Challenge. All Rights Reserved. </p>
            </nav>

            <div className="d-flex justify-content-between">
                <div className="d-flex"> 
                    <img src={facebookImg} className="facebookMediaIcons" />
                    <img src={instagramImg} className="mediaIcons mx-5" />
                    <img src={twitterImg} className="mediaIcons" />
                </div>

                <div className="d-flex">
                    <img src={appStore} />
                    <img src={googlePlay} className="ml-3" />
                    <img src={microsoftStore} className="ml-3 microsoftStore" />
                </div>
            </div>
            </div>
            
        </footer>
    )
}

export default Footer
