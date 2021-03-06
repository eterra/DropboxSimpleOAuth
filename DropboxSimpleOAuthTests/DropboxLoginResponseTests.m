#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import "DropboxSimpleOAuth.h"
#import "FakeDropboxOAuthResponse.h"


SpecBegin(DropboxLoginResponseTests)

describe(@"DropboxLoginResponse", ^{
    __block DropboxLoginResponse *loginResponse;
    
    beforeEach(^{
        loginResponse = [[DropboxLoginResponse alloc] initWithDropboxOAuthResponse:[FakeDropboxOAuthResponse response]];
    });
    
    it(@"has an oauth token", ^{
        expect(loginResponse.accessToken).to.equal(@"Video-Arcade-Token");
    });
    
    it(@"has a token type", ^{
        expect(loginResponse.tokenType).to.equal(@"type0");
    });
    
    it(@"has uid", ^{
        expect(loginResponse.uid).to.equal(@"some-dudes-id-1001");
    });
});

SpecEnd