import { prisma } from '@/app/lib/prisma';
import { SeatSelection } from '@/app/_components/SeatSelection';
import React from 'react';

async function Page({ params }: { params: { shinkansen?: string } }) {
    const name = params.shinkansen;

    if (typeof name !== 'undefined') {
        const seatData = prisma.seat.findMany({
            select: {
                car_count: true,
                seat_count: true,
                shinkansen: { select: { name: true } }
            }, where: { name: name }
        });









        return (
            <React.Fragment>
                {/* <SeatSelection carCount={carCount} seatCount={seatCount} /> */}
            </React.Fragment>
        )
    } else {
        return (
            <React.Fragment>
                <h1>新幹線名が不正です。</h1>
            </React.Fragment>
        )
    }
}

export default Page;
