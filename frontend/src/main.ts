import { createApp } from 'vue';
// @ts-ignore
import App from '@/App.vue';

import '@/assets/index.css';

// set axios defaults to accept and send json
axios.defaults.headers.common['Content-Type'] = 'application/json';
axios.defaults.headers.common['Accept'] = 'application/json';

// create & mount the app
const app = createApp(App);

app.mount('#app');
