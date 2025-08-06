

type FooType = {
  id: number
  name: string
}

const Foo = ({ id, name }: FooType) => {
  return (
    <div>
      <h1>Welcome to My Component: {name}</h1>
      <p>This is a simple React component written in TypeScript.</p>
    </div>
  );
}

const Bar = () => {
  const v = 12

  const o = {
    id: 1,
    name: "Example Object",
    isActive: true
  };

  const handleClick = (): void => {
    console.log("Button clicked!");
  }

  if (Math.random() > 0.5) {
    throw new Error("Random error occurred");
  }

  return (
    <div>
      {v > 10 ?
        <Foo /> :
        <button onClick={handleClick}>Click Me</button>}
    </div>
  );
}
