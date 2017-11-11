.\StaticMethod.ps1

Describe 'Static Method Tests' {
    It 'should be added couple numbers' {
        $result = [TestClass]::Add(1, 2)
        
        $result | Should -Be 3
    }

    It 'should throw Error when parameter is not number' {
        { [TestClass]::Add("not", "number") } | Should Throw
    }
}