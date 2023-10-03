import { router, t } from "../router";
import { bookingRouter } from "./booking";

export const appRouter = router({
  booking: bookingRouter,
});
