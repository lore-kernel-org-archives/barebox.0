Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjT58-0004sO-EH
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 15:55:59 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  2 Mar 2017 16:55:28 +0100
Message-Id: <20170302155528.20781-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] tftp: implement forward seeking
To: barebox@lists.infradead.org

SnVzdCBhYnVzZSB0ZnRwX3JlYWQgdG8gc3RlcCBmb3J3YXJkLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBmcy90
ZnRwLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy90ZnRwLmMgYi9m
cy90ZnRwLmMKaW5kZXggNTZkNDM2NWQ3NzNhLi4yNzJhNzEwNmViNTEgMTAwNjQ0Ci0tLSBhL2Zz
L3RmdHAuYworKysgYi9mcy90ZnRwLmMKQEAgLTU5MSw4ICs1OTEsMjkgQEAgc3RhdGljIGludCB0
ZnRwX3JlYWQoc3RydWN0IGRldmljZV9kICpkZXYsIEZJTEUgKmYsIHZvaWQgKmJ1Ziwgc2l6ZV90
IGluc2l6ZSkKIAogc3RhdGljIGxvZmZfdCB0ZnRwX2xzZWVrKHN0cnVjdCBkZXZpY2VfZCAqZGV2
LCBGSUxFICpmLCBsb2ZmX3QgcG9zKQogewotCS8qIG5vdCBpbXBsZW1lbnRlZCBpbiB0ZnRwIHBy
b3RvY29sICovCi0JcmV0dXJuIC1FTk9TWVM7CisJaWYgKHBvcyA+PSBmLT5wb3MpIHsKKwkJY2hh
ciBidWZbMTAyNF07CisJCWludCByZXQ7CisJCXdoaWxlIChwb3MgPiBmLT5wb3MpIHsKKwkJCXNp
emVfdCBsZW4gPSBtaW4oc2l6ZW9mKGJ1ZiksIChzaXplX3QpKHBvcyAtIGYtPnBvcykpOworCQkJ
cmV0ID0gdGZ0cF9yZWFkKGRldiwgZiwgYnVmLCBsZW4pOworCisJCQlpZiAocmV0IDwgMCkKKwkJ
CQlyZXR1cm4gcmV0OworCQkJZWxzZSBpZiAoIXJldCkKKwkJCQlyZXR1cm4gLUVJTlZBTDsKKwkJ
CWYtPnBvcyArPSByZXQ7CisKKwkJCW1lbW9yeV9kaXNwbGF5KGJ1ZiwgZi0+cG9zIC0gbGVuLCAw
eDEwLCA0LCAwKTsKKwkJfQorCQlyZXR1cm4gcG9zOworCX0gZWxzZSB7CisJCS8qCisJCSAqIFdl
IGNhbm5vdCBzZWVrIGJhY2t3YXJkcyB3aXRob3V0IHJlbG9hZGluZyBvciBjYWNoaW5nIHRoZQor
CQkgKiBmaWxlCisJCSAqLworCQlyZXR1cm4gLUVOT1NZUzsKKwl9CiB9CiAKIHN0YXRpYyBESVIq
IHRmdHBfb3BlbmRpcihzdHJ1Y3QgZGV2aWNlX2QgKmRldiwgY29uc3QgY2hhciAqcGF0aG5hbWUp
Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
