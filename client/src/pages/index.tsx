import { trpc } from '../utils/trpc';
export default function IndexPage() {
  const { data, isLoading } = trpc.booking.getBookingByID.useQuery({ id: 1 });

  console.log(data, isLoading);

  return (
    <div>
      <p>hello</p>
    </div>
  );
}