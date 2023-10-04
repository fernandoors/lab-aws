import { fastifyTRPCPlugin } from '@trpc/server/adapters/fastify';
import fastify from 'fastify';
import { createContext } from './context';
import { appRouter } from './routers';
import cors from '@fastify/cors'
import { env } from './utils/envSchema';

const server = fastify({
  logger: true,
  maxParamLength: 5000,
});

server.register(cors, {
  origin: true,
});

server.register(fastifyTRPCPlugin, {
  prefix: '/',
  trpcOptions: { router: appRouter, createContext },
});

server.get('/', async (request, reply) => {
  return { message: `Hello, world ${new Date().toISOString()}! ${env.URL}` };
});

server.listen({ host: '0.0.0.0', port: 3001 }, (err, address) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log(`Server listening on ${address}`);
});

export default server;