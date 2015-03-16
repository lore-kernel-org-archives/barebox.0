Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXWLp-0003EH-9p
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 14:50:42 +0000
Message-ID: <1426517418.3330.133.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 16 Mar 2015 15:50:18 +0100
In-Reply-To: <20150316144041.GN26127@ns203013.ovh.net>
References: <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
 <20150316111432.GE26127@ns203013.ovh.net>
 <1426507732.3330.87.camel@pengutronix.de>
 <20150316121923.GK26127@ns203013.ovh.net>
 <1426512500.3330.115.camel@pengutronix.de>
 <20150316135141.GL26127@ns203013.ovh.net>
 <1426516316.3330.131.camel@pengutronix.de>
 <20150316144041.GN26127@ns203013.ovh.net>
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
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gTW8sIDIwMTUtMDMtMTYgYXQgMTU6NDAgKzAxMDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklP
TC1WSUxMQVJECndyb3RlOgo+IE9uIDE1OjMxIE1vbiAxNiBNYXIgICAgICwgSmFuIEzDvGJiZSB3
cm90ZToKPiA+IChUaGUgZm9sbG93aW5nIGRlcGVuZHMgb24gcHJvaGliaXRpbmcgYW55IHVuYXV0
aGVudGljYXRlZCBhY2Nlc3MgdG8gdGhlCj4gPiBiYXJlYm94IGNvbnNvbGUuKQo+ID4gCj4gPiBJ
ZiB5b3UganVzdCB1c2UgYSBjaGFpbiBvZiBzaWduZWQgY29kZSBsaWtlIHdpdGggSEFCIG9uIGku
TVgsIGV2ZXJ5IGNlcnQKPiA+IGlzIHZlcmlmaWVkIGJ5IHRoZSBwcmV2aW91cyBzdGVwICh1cCB0
byB0aGUgU1JLIHRhYmxlIGhhc2gpLCBzbyB0aGVyZSBpcwo+ID4gbm8gbmVlZCB0byBhZGRpdGlv
bmFsbHkgcHJvdGVjdCBjZXJ0cyBhZ2FpbnN0IG1vZGlmaWNhdGlvbi4gQW55IG1vZGlmaWVkCj4g
PiBjZXJ0IHdvdWxkIHJlc3VsdCBpbiBhIHZlcmlmaWNhdGlvbiBlcnJvci4gSW4gdGhpcyBzZXR1
cCB0aGVyZSBpcyBubwo+ID4gc2VjcmV0IGluZm9ybWF0aW9uIG9uIHRoZSBkZXZpY2UgYXQgYWxs
Lgo+ID4gCj4gPiBXaGVuIGRvaW5nIHRoaXMgd2l0aG91dCBzdXBwb3J0IGZyb20gdGhlIFNvQydz
IFJPTSBjb2RlLCB5b3UgY291bGQgc3RvcmUKPiA+IGJhcmVib3ggKHdpdGggY29tcGlsZWQtaW4g
bWFzdGVyIHB1YmxpYyBrZXkocykpIGluIFJPIGZsYXNoLiBBZ2FpbnN0IGFuCj4gPiBhdHRhY2tl
ciB3aXRob3V0IHBoeXNpY2FsIGFjY2VzcywgdGhpcyByZXN1bHRzIGluIHRoZSBzYW1lIHNlY3Vy
aXR5Cj4gPiBwcm9wZXJ0aWVzLiBZb3UgY291bGRuJ3QgdXBkYXRlIHRoZSBSTyBiYXJlYm94LCB0
b3VnaCAob25seSBib290IGFub3RoZXIKPiA+IG9uZSBzZWNvbmQgc3RhZ2UpLgo+IAo+IEkgYWdy
ZWUgd2l0aCB5b3UgSSBzYWlkIHRoZSBzYW1lCj4gCj4gbXkga2V5IHBvaW50IGlzIGlmIHdlIGRv
IGFsbG93IGNvbnNvbGUgYWNjZXNzIHdlIG5lZWQgYmUgc3VyZSBhdCAxMDAlIHRoYXQKPiB0aGV5
IGNhbiBub3QgdGVtcGVyZWQgd2l0aCB0aGUgdHJ1c3RlZCBrZXkgaW4gUkFNIGFuZCBiYXJlYm94
IGJpbmFyeSBhbmQKPiBtYWxsb2Mgc3BhY2UKClllcy4gV2Ugd291bGQgYWxzbyBuZWVkIHRvIGRp
c2FsbG93IGFjY2VzcyB0byBkZXZpY2VzIGFuZCBub24tdmVyaWZ5aW5nCmJvb3QgY29tbWFuZHMu
CgpSZWdhcmRzLApKYW4KLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29s
dXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBl
aW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEy
MS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAg
ICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
