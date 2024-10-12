import { Seat } from '@/app/_components/SeatSelection/Seat';
import { Car } from '@/app/_components/Car';
import React from 'react';

export interface Props {
    carCount: number;
    seatCount: number;
}

export function SeatSelection(props: Props) {
    return (
        <React.Fragment>
            {Array.from(Array(props.carCount)).map((_, index) => {
                return (
                    <Car key={index}>
                        <Seat seatCount={props.seatCount} />
                    </Car>
                );
            })}
        </React.Fragment>
    )
}
