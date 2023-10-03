import { initTRPC } from '@trpc/server';
import { appRouter } from './routers';
import { createContext } from './context';

type User = {
  id: string;
  name: string;
  bio?: string;
};

const users: Record<string, User> = {};
export const t = initTRPC.context<typeof createContext>().create();

export const { router } = t;

// export type definition of API
export type AppRouter = typeof appRouter;