import { Container } from 'react-bootstrap';
import { Switch, Route } from "react-router-dom"

import Users from "./Users";
import Nav from "./Nav"
import Feed from "./Feed"
import "./App.scss";

function App() {
  return (
    <div>
      <Container>
        <Nav />
        <Switch>
          <Route path="/" exact>
            {/* <Feed /> */}
          </Route>
          <Route path="/users">
            <Users />
          </Route>
        </Switch>
      </Container>
    </div>
  );
}

export default App;