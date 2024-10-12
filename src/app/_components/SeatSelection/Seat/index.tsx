import Grid from '@mui/material/Grid2';

export interface Props {
    seatCount: number;
};

export function Seat(props: Props) {
    const rowCount = 5;
    const column = props.seatCount / rowCount;

    return (
        <div>
            {Array.from(Array(rowCount)).map((_, index) => {
                return (
                    <Grid container spacing={3} key={index}>
                        {Array.from(Array(column)).map((_, index) => {
                            return (
                                <Grid size={10} key={index}></Grid>
                            );
                        })}
                    </Grid>);
            })
            }
        </div>
    );
}
