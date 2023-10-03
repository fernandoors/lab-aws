import { router } from "../../router";
import { getBookingByIDRouter } from "./getBookingByID";

export const bookingRouter = router({
  getBookingByID: getBookingByIDRouter,
});