Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCmPM-0003JY-6f
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:40:05 +0000
Date: Mon, 10 Feb 2014 09:39:34 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140210093934.3d7dbeb7@e6520eb>
In-Reply-To: <20140210083358.GH17250@pengutronix.de>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
 <1391868972-31978-2-git-send-email-eric@eukrea.com>
 <1391869601.90335932@f192.i.mail.ru>
 <20140210083358.GH17250@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/7] ARM: i.MX53: Add sata to devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

TGUgTW9uLCAxMCBGZWIgMjAxNCAwOTozMzo1OCArMDEwMCwKU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPiBhIMOpY3JpdCA6Cgo+IE9uIFNhdCwgRmViIDA4LCAyMDE0IGF0IDA2
OjI2OjQxUE0gKzA0MDAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiDQodGD0LHQsdC+0YLQ
sCwgIDgg0YTQtdCy0YDQsNC70Y8gMjAxNCwgMTU6MTYgKzAxOjAwINC+0YIgRXJpYyBCw6luYXJk
IDxlcmljQGV1a3JlYS5jb20+Ogo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVy
aWNAZXVrcmVhLmNvbT4KPiA+ID4gLS0tCj4gPiA+IGFyY2gvYXJtL2R0cy9pbXg1My5kdHNpIHwg
OSArKysrKysrKysKPiA+ID4gMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9pbXg1My5kdHNpIGIvYXJjaC9hcm0vZHRz
L2lteDUzLmR0c2kKPiA+ID4gaW5kZXggNjc4NTQ3Yy4uOTE2NTliOCAxMDA2NDQKPiA+ID4gLS0t
IGEvYXJjaC9hcm0vZHRzL2lteDUzLmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm0vZHRzL2lteDUz
LmR0c2kKPiA+ID4gQEAgLTc1LDYgKzc1LDE1IEBACj4gPiA+IGludGVycnVwdC1wYXJlbnQgPSA8
JnR6aWM+Owo+ID4gPiByYW5nZXM7Cj4gPiA+IAo+ID4gPiArCQlzYXRhOiBzYXRhQDEwMDAwMDAw
IHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDUzLWFoY2kiOwo+ID4gPiArCQkJcmVn
ID0gPDB4MTAwMDAwMDAgMHgxMDAwPjsKPiA+ID4gKwkJCWludGVycnVwdHMgPSA8Mjg+Owo+ID4g
PiArCQkJY2xvY2tzID0gPCZjbGtzIDE3Mz4sIDwmY2xrcyA1PiwgPCZjbGtzIDE4OD47Cj4gPiA+
ICsJCQljbG9jay1uYW1lcyA9ICJzYXRhIiwgImFoYiIsICJwZXIiOwo+ID4gPiArCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiA+ID4gKwkJfTsKPiA+IAo+ID4gU2FzY2hhLCB3ZSBzdG9wIGNoYW5n
aW5nIERUUyBvZiB0aGUga2VybmVsIG9yIG5vdD8KPiA+IFdoYXQgaXMgdGhlIHVsdGltYXRlIHNv
bHV0aW9uPwo+IAo+IFdoYXQgZG8geW91IHN1Z2dlc3QgZm9yIHRoZSBjYXNlIGFib3ZlPyBBIGlt
eDUzLWJiLmR0c2kgaW5jbHVkZWQgZnJvbQo+IGlteDUzLmR0c2k/IEkgdGhpbmsgZGlzYWxsb3dp
bmcgYWhjaSBzdXBwb3J0IGZvciBiYXJlYm94IGlmIGl0J3Mgbm90Cj4gdXBzdHJlYW0gaW4gTGlu
dXggaXMgbm90IGEgZ29vZCBvcHRpb24uCj4gCml0J3MgaW4gbGludXgtbmV4dCA6Cmh0dHA6Ly9n
aXQua2VybmVsLm9yZy9jZ2l0L2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90
cmVlL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLmR0c2kjbjk0CgpFcmljCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
