using NUnit.Framework;

namespace HelloWorld_Test
{
    [TestFixture]
    public class Class1
    {

        [Test]
        public void The_First_Test() {
            Assert.AreEqual(42, (6*7));
        }

        [Test]
        public void The_Second_Test() {
            Assert.IsTrue(true);
        }
    }
}
