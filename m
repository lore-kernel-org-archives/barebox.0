Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glXjs-0006BB-HD
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 11:27:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 21 Jan 2019 12:27:30 +0100
Message-Id: <20190121112732.23772-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v3 1/3] fs/nfs: don't try to set nfs error code from mount rpc
 call
To: barebox@lists.infradead.org

QSBwYWNrZXQgZnJvbSBhIG1vdW50IHJwYyBjYWxsIGRvZXNuJ3QgaGF2ZSBhbiBORlMgZXJyb3Ig
ZmllbGQsIHNvIGRvbid0CnRyeSB0byBhY2Nlc3MgdGhpcy4KCkluIHRoZSBjYXNlIG9mIHRoZSBN
T1VOVF9VTU9VTlQgcHJvY2VkdXJlIHRoZSByZXBseSBwYWNrYWdlIGlzIHNob3J0CnN1Y2ggdGhh
dCBhY2Nlc3NpbmcgdGhlIHUzMiBhZnRlciB0aGUgcnBjX3JlcGx5IHN0cnVjdHVyZSBpcyBhbHJl
YWR5CmFmdGVyIHRoZSBlbmQgb2YgdGhlIHBhY2tldC4gQXBhcnQgZnJvbSB0aGUgYWNjZXNzIHRv
IG91dC1vZi1wYWNrZXQgZGF0YQp0aGVyZSBpcyBubyBoYXJtIGJlY2F1c2UgdGhlIHdyb25nbHkg
cmVhZCB2YWx1ZSBpcyB1bnVzZWQuIEJ1dCBtYWtlIHRoaXMKbW9yZSBleHBsaWNpdCBieSBvbmx5
IHVzaW5nIG5mc2VyciBpZiB0aGUgY2FsbCB3YXMgYW4gTkZTIHJlcXVlc3QuCgpGaXhlczogOWVk
ZTU2YWQyNDc2ICgiZnM6IEFkZCBORlMgc3VwcG9ydCIpClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZnMvbmZzLmMg
fCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2ZzL25mcy5jIGIvZnMvbmZzLmMKaW5kZXggZDdmMTU2Njg3ZmM5Li43
Njk1ZmQ0MmJhMTMgMTAwNjQ0Ci0tLSBhL2ZzL25mcy5jCisrKyBiL2ZzL25mcy5jCkBAIC0zODIs
NyArMzgyLDcgQEAgc3RhdGljIGludCBycGNfY2hlY2tfcmVwbHkodW5zaWduZWQgY2hhciAqcGt0
LAogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLQlpZiAocnBjX3Byb2cgPT0gUFJPR19QT1JUTUFQ
KQorCWlmIChycGNfcHJvZyAhPSBQUk9HX05GUykKIAkJcmV0dXJuIDA7CiAKIAlkYXRhID0gKHVp
bnQzMl90ICopKHBrdCArIHNpemVvZihzdHJ1Y3QgcnBjX3JlcGx5KSk7CkBAIC00NTksNyArNDU5
LDggQEAgYWdhaW46CiAJCXJldCA9IHJwY19jaGVja19yZXBseShuZnNfcGFja2V0LCBycGNfcHJv
ZywKIAkJCQlucHJpdi0+cnBjX2lkLCAmbmZzZXJyKTsKIAkJaWYgKCFyZXQpIHsKLQkJCXJldCA9
IG5mc2VycjsKKwkJCWlmIChycGNfcHJvZyA9PSBQUk9HX05GUykKKwkJCQlyZXQgPSBuZnNlcnI7
CiAJCQlicmVhazsKIAkJfQogCX0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
