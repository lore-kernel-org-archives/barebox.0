Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScghO-0007Bj-IP
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 17:40:43 +0000
Date: Thu, 7 Jun 2012 19:40:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120607174040.GL30400@pengutronix.de>
References: <m3ehprl1f0.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3ehprl1f0.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Fix sha224sum panic by registering SHA224 hash name.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gVGh1LCBKdW4gMDcsIDIwMTIgYXQgMDM6MDM6MTVQTSArMDIwMCwg
S3J6eXN6dG9mIEhhbGFzYSB3cm90ZToKPiBiYXJlYm94Oi8gc2hhMjI0c3VtCj4gQlVHOiBmYWls
dXJlIGF0IGNvbW1hbmRzL2RpZ2VzdC5jOjQwL2RvX2RpZ2VzdCgpIQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBIYcWCYXNhIDxraGNAcG0ud2F3LnBsPgo+IAoKQXBwbGllZCB0byBtYXN0
ZXIgKGFsc28gdGhlIG90aGVyIHR3byBwYXRjaGVzKQoKVGhhbmtzCiBTYXNjaGEKCj4gZGlmZiAt
LWdpdCBhL2NyeXB0by9zaGEyLmMgYi9jcnlwdG8vc2hhMi5jCj4gaW5kZXggMTczMDNlNi4uMzA5
NmVmZSAxMDA2NDQKPiAtLS0gYS9jcnlwdG8vc2hhMi5jCj4gKysrIGIvY3J5cHRvL3NoYTIuYwo+
IEBAIC0zMTMsNiArMzEzLDcgQEAgc3RhdGljIGludCBkaWdlc3Rfc2hhMjI0X2luaXQoc3RydWN0
IGRpZ2VzdCAqZCkKPiAgCj4gIHN0YXRpYyBzdHJ1Y3Qgc2hhMiBtMjI0ID0gewo+ICAJLmQgPSB7
Cj4gKwkJLm5hbWUgPSAic2hhMjI0IiwKPiAgCQkuaW5pdCA9IGRpZ2VzdF9zaGEyMjRfaW5pdCwK
PiAgCQkudXBkYXRlID0gZGlnZXN0X3NoYTJfdXBkYXRlLAo+ICAJCS5maW5hbCA9IGRpZ2VzdF9z
aGEyX2ZpbmFsLAo+IAo+IC0tIAo+IEtyenlzenRvZiBIYWxhc2EKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0
Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0
cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRy
b25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwg
UGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJB
IDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
