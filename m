Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XyHqz-0006Wd-3T
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 10:17:14 +0000
Message-ID: <1418120207.5704.8.camel@lws-gamez.phytec.de>
From: Teresa =?ISO-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Date: Tue, 09 Dec 2014 11:16:47 +0100
In-Reply-To: <20141209091302.GP30369@pengutronix.de>
References: <1418032791-35329-1-git-send-email-t.gamez@phytec.de>
 <20141209091302.GP30369@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: dts: am335x-phytec-phyflex: Increase kernel
 partition on SPI NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGVsbG8gU2FzY2hhLAoKQW0gRGllbnN0YWcsIGRlbiAwOS4xMi4yMDE0LCAxMDoxMyArMDEwMCBz
Y2hyaWViIFNhc2NoYSBIYXVlcjoKPiBIaSBUZXJlc2EsCj4gCj4gT24gTW9uLCBEZWMgMDgsIDIw
MTQgYXQgMTA6NTk6NDlBTSArMDEwMCwgVGVyZXNhIEfDoW1leiB3cm90ZToKPiA+IEluY3JlYXNl
IGtlcm5lbCBwYXJ0aXRpb24gdG8gZW5kIG9mIFNQSSBOT1IuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgo+ID4gLS0tCj4gPiAgYXJjaC9h
cm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5ZmxleC5kdHMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlmbGV4LmR0cyBiL2FyY2gvYXJtL2R0cy9hbTMz
NXgtcGh5dGVjLXBoeWZsZXguZHRzCj4gPiBpbmRleCBjNDQ4MWY1Li4wZGU3ZTg3IDEwMDY0NAo+
ID4gLS0tIGEvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5ZmxleC5kdHMKPiA+ICsrKyBi
L2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWZsZXguZHRzCj4gPiBAQCAtMTg3LDcgKzE4
Nyw3IEBACj4gPiAgCj4gPiAgCQlwYXJ0aXRpb25ANCB7Cj4gPiAgCQkJbGFiZWwgPSAia2VybmVs
IjsKPiA+IC0JCQlyZWcgPSA8MHhlMDAwMCAweDQwMDAwMD47Cj4gPiArCQkJcmVnID0gPDB4ZTAw
MDAgMHgwPjsKPiA+ICAJCX07Cj4gCj4gSSB3YXNuJ3QgYXdhcmUgYmFyZWJveCBoYW5kbGVzIHRo
aXMgY2FzZSBsaWtlIHlvdSBpbnRlbmQgaGVyZS4gV2hhdAo+IGFib3V0IHRoZSBrZXJuZWw/IFdv
bid0IHlvdSBlbmQgdXAgd2l0aCBhIHplcm8gc2l6ZWQgcGFydGl0aW9uIHRoZXJlPwoKaGF2ZSBh
IGxvb2sgYXQgaW5jbHVkZS9saW51eC9tdGQvcGFydGl0aW9ucy5oIGluIHRoZSBsaW51eCBrZXJu
ZWwuCgpUaGVyZSBpcyBhIG1hY3JvIGRlZmluZWQgCiNkZWZpbmUgTVREUEFSVF9TSVpfRlVMTCAg
ICAgICAgKDApCgpBbmQgdGhlIGNvbW1lbnQgYWJvdmUgc2F5czogCnNpemU6IHRoZSBwYXJ0aXRp
b24gc2l6ZTsgaWYgZGVmaW5lZCBhcyBNVERQQVJUX1NJWl9GVUxMLCB0aGUgcGFydGl0aW9uCndp
bGwgZXh0ZW5kIHRvIHRoZSBlbmQgb2YgdGhlIG1hc3RlciBNVEQgZGV2aWNlLgoKVGhpcyB3b3Jr
cyBmaW5lIGZvciBrZXJuZWwgYW5kIGJhcmVib3guIAoKVGVyZXNhCgo+IAo+IFNhc2NoYQo+IAoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
