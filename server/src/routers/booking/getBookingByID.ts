import { z } from "zod";
import { t } from "../../router";

export const getBookingByIDRouter = t.procedure
  .input(z.object({ id: z.number() }))
  .query(() => ({ id: 1 }));