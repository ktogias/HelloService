<?php 

class HelloCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function tryToGetHello(AcceptanceTester $I)
    {
        $I->wantTo('get hello json encoded string and decode it');
        $I->amOnPage('/');
        $I->canSeeResponseCodeIsSuccessful();
        $content = json_decode($I->grabPageSource());
        \PHPUnit\Framework\assertNotEmpty($content);
    }
}
