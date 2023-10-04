import { config } from "dotenv";
import { z } from "zod";

config()
const envSchema = z.object({
  URL: z.string().nullable(),
  lab: z.string().nullable(),
});

export const env = envSchema.parse(process.env);