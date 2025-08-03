const foo = () => {
  console.log("Hello, world!");
  let v = 0;
  // This is a comment
  for (let i = 0; i < 5; i++) {
    v += Math.round(v + i * 2 % 2)
  }
  /*
   * This is a multi-line comment
   */
  if (v > Math.pow(2, 10)) {
    throw new Error("Value exceeded limit");
  }

  return undefined
}

interface MyInterface {
  id: number;
  name: string;
  isActive: boolean;
}

class Bar implements MyInterface {
  private value: number;

  id: number;
  name: string;
  isActive: boolean;

  constructor(value: number) {
    this.value = value;
  }

  public increment(): void {
    this.value++;
  }

  public getValue(): number {
    return this.value;
  }
}

const fooBar = (bar: Bar): string => {
  bar.increment();
  return bar.name
}


type MyType = {
  id: number;
  name: string;
  isActive: boolean;
};

type MyUnion = string | number | boolean;

declare function myFunction(param: MyType): MyUnion;
