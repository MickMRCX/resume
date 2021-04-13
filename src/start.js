import { startServer } from './core/server';

// Start the startServer
(async () => {
    {
        try {
            await startServer();
        } catch (error) {
            console.log(`Error while starting the server: ${error}`);
            process.exit(-1);
        }
    }
})();