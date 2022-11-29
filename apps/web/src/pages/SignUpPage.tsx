import { Button, Container, Stack, TextField, Typography } from '@mui/material';
import { Form, Formik } from 'formik';
import SBTextField from '../components/SBTextField';
import { UserCreation, UserCreationSchema } from '../schemas/UserCreation';

export default function SignUpPage() {
  return (
    <Formik<UserCreation>
      initialValues={{
        email: '',
        password: '',
        confirmPassword: '',
      }}
      validationSchema={UserCreationSchema}
      onSubmit={console.log}
    >
      <Form>
        <Container>
          <Stack gap={2}>
            <Typography variant="h1">Sign up</Typography>
            <SBTextField label="Email" name="email" />
            <SBTextField label="Password" type="password" name="password" />
            <SBTextField
              label="Confirm Password"
              type="password"
              name="confirmPassword"
            />
            <Button type="submit" variant="contained">
              Sign up
            </Button>
          </Stack>
        </Container>
      </Form>
    </Formik>
  );
}
