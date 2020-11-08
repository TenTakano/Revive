import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Redirect, Route, Switch } from 'react-router-dom';

const MyMain: React.FunctionComponent<{}> = () => {
  return (
    <div>This is root page</div>
  );
}

const MySecond: React.FunctionComponent<{}> = () => {
  return (
    <div>This is second page</div>
  );
}

const Root: React.FunctionComponent<{}> = () => {
  return (
    <Switch>
      <Route exact path="/" component={MyMain} />
      <Route exact path="/second" component={MySecond} />
      <Redirect to="/" />
    </Switch>
  );
}

ReactDOM.render(
  <BrowserRouter>
    <Root />
  </BrowserRouter>,
  document.getElementById('root')
);
