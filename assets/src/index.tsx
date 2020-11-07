import * as React from 'react';
import * as ReactDOM from 'react-dom';

const MyReactComponent: React.FunctionComponent<{}> = () => {
  return (
    <div>Hello World</div>
  );
}

ReactDOM.render(<MyReactComponent />, document.getElementById("root"));