using System;
using System.IO;
using Xunit;
using HelloWorld;

namespace HelloWorldTest
{
    public class HelloWorldTest
    {
        [Fact]
        public void SayHelloWorld()
        {
            using (StringWriter sw = new StringWriter())
            {
                string expected = string.Format("Hello, World!{0}", Environment.NewLine);
                Console.SetOut(sw);
                HelloWorld.HelloWorld.Main();
                Assert.Equal(expected, sw.ToString());
            }
        }
    }
}
