import axios from 'axios';

const axiosInstance = axios.create({
  baseURL: process.env.REACT_APP_API_URL || 'http://localhost:5000/api/v1',                            // Change this during deployment
  headers: {
    'Content-Type': 'application/json',
  },
});

export default axiosInstance;                                         // THIS WHOLE FILE IS NEW FOR ASSIGNMENT 2                                    
