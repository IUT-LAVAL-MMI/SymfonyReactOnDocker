import React from 'react';
import classNames from 'classnames';
import Container from 'react-bootstrap/Container';

import './Footer.scss';

function Footer() {
  return (
    <footer className={classNames('fixed-bottom', 'bg-light', 'mt-auto', 'py-3')}>
      <Container>
        <span className="text-muted">Copyright Rémi Venant - Le Mans Université.</span>
      </Container>
    </footer>
  );
}

export default Footer;
