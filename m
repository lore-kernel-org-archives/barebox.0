Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwESl-0005Oa-UO
 for barebox@lists.infradead.org; Sun, 24 Sep 2017 21:29:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sun, 24 Sep 2017 23:28:53 +0200
Message-Id: <20170924212853.31531-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] pinctrl: mxs: fix error message to mention right property name
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1teHMuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGluY3RybC9waW5jdHJsLW14cy5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtbXhz
LmMKaW5kZXggZmExMTc2ZmUxYmQ2Li40NzljMzFhNDI2YjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGluY3RybC9waW5jdHJsLW14cy5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLW14cy5j
CkBAIC01MCwxMSArNTAsMTEgQEAgc3RhdGljIGludCBteHNfcGluY3RybF9zZXRfc3RhdGUoc3Ry
dWN0IHBpbmN0cmxfZGV2aWNlICpwZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUKIAlsaXN0ID0gb2Zf
Z2V0X3Byb3BlcnR5KG5wLCAiZnNsLHBpbm11eC1pZHMiLCAmc2l6ZSk7CiAJaWYgKCFsaXN0KQog
CQlyZXR1cm4gLUVJTlZBTDsKIAogCWlmICghc2l6ZSB8fCBzaXplICUgNCkgewotCQlkZXZfZXJy
KGlvbXV4LT5waW5jdHJsLmRldiwgIkludmFsaWQgZnNsLHBpbnMgcHJvcGVydHkgaW4gJXNcbiIs
CisJCWRldl9lcnIoaW9tdXgtPnBpbmN0cmwuZGV2LCAiSW52YWxpZCBmc2wscGlubXV4LWlkcyBw
cm9wZXJ0eSBpbiAlc1xuIiwKIAkJCQlucC0+ZnVsbF9uYW1lKTsKIAkJcmV0dXJuIC1FSU5WQUw7
CiAJfQogCiAJbnBpbnMgPSBzaXplIC8gNDsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
