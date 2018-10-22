using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace DotnetCoreXUnitProjectTemplate
{
    /**************************************************
     * 
     * To use:
     * Either use cmd or powershell and cd to the project directory where project.json is
     *      dotnet restore && dotnet build && dotnet test
     * OR
     * Use Visual Studio GUI Test Runner (Ctrl R,T)
     * ************************************************/
    public class Test
    {
        [Fact]
        public void FailingTest()
        {
            Assert.True(false);
        }

        [Fact]
        public void PassingTest()
        {
            Assert.True(true);
        }
    }
}
