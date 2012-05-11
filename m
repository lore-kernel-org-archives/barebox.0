Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSugM-0002Zu-24
 for barebox@lists.infradead.org; Fri, 11 May 2012 18:35:15 +0000
Date: Fri, 11 May 2012 20:35:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511183511.GM27341@pengutronix.de>
References: <1336750939-18572-1-git-send-email-shc_work@mail.ru>
 <1336750939-18572-2-git-send-email-shc_work@mail.ru>
 <20120511181508.GK27341@pengutronix.de>
 <E1SSuP7-0006Ek-KP.shc_work-mail-ru@f121.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1SSuP7-0006Ek-KP.shc_work-mail-ru@f121.mail.ru>
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
Subject: Re: [PATCH 2/2] i2c: Added switch for allowing usage 16bit register
 addresses
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gRnJpLCBNYXkgMTEsIDIwMTIgYXQgMTA6MTc6MjVQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiBGcmksIDExIE1heSAyMDEyIDIwOjE1OjA4ICswMjAwINC+0YIgU2FzY2hhIEhh
dWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjoKPiA+IE9uIEZyaSwgTWF5IDExLCAyMDEyIGF0
IDA3OjQyOjE5UE0gKzA0MDAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiA+IC0tLQo+ID4g
PiAgCQkJcHJpbnRmKCIweCUwMnggIiwgKihidWYgKyBpKSk7Cj4gPiA+IEBAIC0xMzUsNyArMTM4
LDggQEAgc3RhdGljIGNvbnN0IF9fbWF5YmVfdW51c2VkIGNoYXIgY21kX2kyY193cml0ZV9oZWxw
W10gPQo+ID4gPiAgIndyaXRlIHRvIGkyYyBkZXZpY2UuXG4iCj4gPiA+ICAiICAtYSAweDxhZGRy
PiAgIGkyYyBkZXZpY2UgYWRkcmVzc1xuIgo+ID4gPiAgIiAgLWIgPGJ1c19udW0+ICBpMmMgYnVz
IG51bWJlciAoZGVmYXVsdCA9IDApXG4iCj4gPiA+IC0iICAtciAweDxyZWc+ICAgIHN0YXJ0IHJl
Z2lzdGVyXG4iOwo+ID4gPiArIiAgLXIgMHg8cmVnPiAgICBzdGFydCByZWdpc3RlclxuIgo+ID4g
PiArIiAgLXcgICAgICAgICAgICB1c2UgdGhlIHdvcmQgYXMgYW4gYWRkcmVzc1xuIjsKPiA+IENh
biB3ZSBoYXZlICdkbyB3b3JkICgxNmJpdCkgYWNjZXNzZXMnIGhlcmUgdG8gbWFrZSB0aGlzIGEg
Yml0IG1vcmUKPiA+IGV4cGxpY2l0Pwo+IE1heWJlICJ1c2UgMTZiaXQtd2lkZSBhZGRyZXNzIGFj
Y2VzcyIgPwoKRmluZS4gSXQgaGFzIDE2Yml0IGFuZCBhIHdvcmQgd2l0aCAndycgaW4gaXQgOykK
ClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25z
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBT
dHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
