<?php 
class HelloTest extends \Codeception\Test\Unit
{
    /**
     * @var \UnitTester
     */
    protected $tester;
    
    protected function _before()
    {
        require 'src/hello.php';
    }

    protected function _after()
    {
    }

    // tests
    public function testShouldReturnHello()
    {
        $this->expectOutputRegex("/hello/i");
    }
    
    public function testShouldReturnJsonEncodedString(){
        $this->expectOutputRegex("/^\".*\"$/");
    }
    
    public function testShouldSetApplicationJsonContentTypeHeader(){
       $headers=xdebug_get_headers();
       $this->assertContains('Content-Type: application/json', $headers);
       $this->assertTrue(false);
    }
}