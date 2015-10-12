Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlWbq-00018u-QS
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 06:29:24 +0000
Date: Mon, 12 Oct 2015 08:28:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012062858.GM7858@pengutronix.de>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-10-git-send-email-sebastian.hesselbarth@gmail.com>
 <87h9lx6sx3.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h9lx6sx3.fsf@belgarion.home>
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
Subject: Re: [PATCH 09/17] mtd: nand_mrvl_nfc: Get ecc parameters from DT
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

T24gU3VuLCBPY3QgMTEsIDIwMTUgYXQgMTA6Mzk6NTJQTSArMDIwMCwgUm9iZXJ0IEphcnptaWsg
d3JvdGU6Cj4gU2ViYXN0aWFuIEhlc3NlbGJhcnRoIDxzZWJhc3RpYW4uaGVzc2VsYmFydGhAZ21h
aWwuY29tPiB3cml0ZXM6Cj4gCj4gPiBXaXRoIERUIGhlbHBlcnMgZm9yIEVDQyBzdGVwIHNpemUg
YW5kIHN0cmVuZ3RoLCBub3cgdXNlIHRoZW0gb24KPiA+IE1hcnZlbGwgTkFORCBkcml2ZXIuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEhlc3NlbGJhcnRoIDxzZWJhc3RpYW4uaGVz
c2VsYmFydGhAZ21haWwuY29tPgo+IFRoaXMgb25lIGJyZWFrIHRoZSBweGEgKHp5bG9uaXRlMzEw
X2RlZmNvbmZpZykgYnVpbGQgOgo+IGRyaXZlcnMvbXRkL25hbmQvbmFuZF9tcnZsX25mYy5jOiBJ
biBmdW5jdGlvbiDigJhtcnZsX25hbmRfcHJvYmVfZHTigJk6Cj4gZHJpdmVycy9tdGQvbmFuZC9u
YW5kX21ydmxfbmZjLmM6MTE2MzoyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVu
Y3Rpb24g4oCYb2ZfZ2V0X25hbmRfZWNjX3N0cmVuZ3Ro4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1
bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgaG9zdC0+ZWNjX3N0cmVuZ3RoID0gb2ZfZ2V0X25hbmRf
ZWNjX3N0cmVuZ3RoKG5wKTsKPiAgIF4KPiBkcml2ZXJzL210ZC9uYW5kL25hbmRfbXJ2bF9uZmMu
YzoxMTY3OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhvZl9n
ZXRfbmFuZF9lY2Nfc3RlcF9zaXpl4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xh
cmF0aW9uXQo+ICAgaG9zdC0+ZWNjX3N0ZXAgPSBvZl9nZXRfbmFuZF9lY2Nfc3RlcF9zaXplKG5w
KTsKPiAgIF4KPiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKClll
cywgd2UgY3VycmVudGx5IGRvIG5vdCBoYXZlIHRoZXNlIGZ1bmN0aW9ucyBpbiBiYXJlYm94LgoK
U2FzY2hhCgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25z
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBT
dHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
