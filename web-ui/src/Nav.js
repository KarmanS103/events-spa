// Code in this file based on Nat Tuck's Lecture 17 Code
// Nav.js
import { Nav } from 'react-bootstrap';
import { NavLink } from 'react-router-dom';

function Link({to, children}) {
  return (
    <Nav.Item>
      <NavLink to={to} exact className="nav-link" activeClassName="active">
        {children}
      </NavLink>
    </Nav.Item>
  );
}

export default function AppNav() {
  return (
    <Nav variant="pills">
      <Link to="/">Feed</Link>
      <Link to="/users">Users</Link>
      <Link to="/login">Login</Link>
    </Nav>
  );
}