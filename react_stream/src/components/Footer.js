import React from 'react'

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
                    <p>facebook</p>
                    <p className="ml-3">twitter</p>
                    <p className="ml-3">instagram</p>
                </div>

                <div className="d-flex">
                    <p>App Store</p>
                    <p className="ml-3"> Google Play</p>
                    <p className="ml-3">Microsoft</p>
                </div>
            </div>
            </div>
            
        </footer>
    )
}

export default Footer
