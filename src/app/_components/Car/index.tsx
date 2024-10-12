import CardContent from '@mui/material/CardContent';
import * as React from 'react';

type Children = React.ReactNode;

export function Car({ children }: { children: Children }) {
    return (
        <React.Fragment>
            <CardContent>
                {children}
            </CardContent>


        </React.Fragment>
    )
}
