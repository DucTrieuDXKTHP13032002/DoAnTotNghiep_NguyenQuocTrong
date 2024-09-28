import React, { useState } from 'react';
import { MessageOutlined } from '@ant-design/icons';

const Chatbot = () => {
    const [isOpen, setIsOpen] = useState(false);

    const togglePopup = () => {
        setIsOpen(!isOpen);
    };

    return (
        <div>
            <button onClick={togglePopup} className="chatbot-button">
                {isOpen ? 'X' : <MessageOutlined />}
            </button>

            {isOpen && (
                <div style={{
                    position: 'fixed',
                    bottom: '20px',
                    right: '20px',
                    width: '350px',
                    height: '400px',
                    border: '1px solid #ccc',
                    backgroundColor: 'white',
                    boxShadow: '0 2px 10px rgba(0, 0, 0, 0.2)',
                    zIndex: '1000'
                }}>
                    <iframe
                        title="Chatbot"
                        width="100%"
                        height="100%"
                        allow="microphone;"
                        src="https://console.dialogflow.com/api-client/demo/embedded/f833f8ad-c188-41b0-8902-e09b7112b3dc"
                    ></iframe>
                    <button onClick={togglePopup} style={{
                        position: 'absolute',
                        top: '10px',
                        right: '10px'
                    }}>
                        X
                    </button>
                </div>
            )}
        </div>
    );
};

export default Chatbot;
