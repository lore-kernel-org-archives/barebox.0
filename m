Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCVnx-00055h-2J
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 15:28:37 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1XCVnZ-0000Ts-Q4
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:28:13 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1XCVnZ-0002ky-Lf
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:28:13 +0200
Message-ID: <1406734093.22823.134.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 30 Jul 2014 17:28:13 +0200
In-Reply-To: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: envfs: provide an intentional way to ignore an existing
 external environment
To: barebox@lists.infradead.org

SGkgSsO8cmdlbiEKClRoaXMgbG9va3MgZ29vZCBzbyBmYXIuCgpPbiBXZWQsIDIwMTQtMDctMzAg
YXQgMTI6MjAgKzAyMDAsIEp1ZXJnZW4gQm9ybGVpcyB3cm90ZToKPiBUaGlzIGNoYW5nZSBzZXQg
YWRkcyBhIG5ldyBvcHRpb24gdG8gdGhlIHNhdmVlbnYgY29tbWFuZCB3aGljaCB3aWxsCj4gd3Jp
dGUgYW4gZW1wdHkgZW52aXJvbm1lbnQgd2l0aG91dCBjb250ZW50LiBCdXQgaXQgd2lsbCBiZSBt
YXJrZWQgYXMgYQo+IHBsYWNlaG9sZGVyIGFuZCB0aHVzIHNob3VsZCBiZSAiaWdub3JlZCIgYW5k
IGJhcmVib3ggZmFsbHMgYmFjayB0byBpdHMKPiBidWlsdC1pbiBkZWZhdWx0IGVudmlyb25tZW50
LgoKSSBoYXZlbid0IGZvdW5kIHdoZXJlIHRoZSBlbnZpcm9ubWVudCBsb2FkaW5nIGlzIGNoYW5n
ZWQgdG8gaW1wbGVtZW50CnRoaXMgYmVoYXZpb3IuIElzIGEgcGF0Y2ggbWlzc2luZz8KClRoYW5r
cywKSmFuCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAg
ICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3Ry
LiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3
LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6
ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
